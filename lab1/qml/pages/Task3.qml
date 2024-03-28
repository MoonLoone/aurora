import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    objectName: "task3Page"
    allowedOrientations: Orientation.All

    PageHeader {
            objectName: "pageHeader"
            title: qsTr("Task3")
            extraContent.children: [
                Column{
                Button {
                    text: "Task1"
                    onClicked: pageStack.push(Qt.resolvedUrl("Task1.qml"))
                }
                Button {
                    text: "Task2"
                    onClicked: pageStack.push(Qt.resolvedUrl("Task2.qml"))
                }
                Button {
                    text: "Task4"
                    onClicked: pageStack.push(Qt.resolvedUrl("Task4.qml"))
                }
                }
            ]
        }

    PinchArea {
            id: pinchArea
            property real _statTargetScale
            property real _statTargetRotation
            property real _statRadiusX
            property real _statRadiusY

            function initiateTransformation(pinch){
                _statTargetScale = target.scale
                _statTargetRotation = target.rotation
                _statRadiusX = target.x - pinch.center.x
                _statRadiusY = target.y - pinch.center.y
            }

            function updateTransformation(pinch){
                var rotationSin = Math.sin(pinch.rotation + Math.PI/180)
                var rotationCos = Math.cos(pinch.rotation + Math.PI/180)
                var radiusX = pinch.scale*(_statRadiusX*rotationCos - _statRadiusY*rotationSin)
                var radiusY = pinch.scale*(_statRadiusX*rotationSin - _statRadiusY*rotationCos)
                target.x =pinch.center.x + radiusX
                target.y =pinch.center.y + radiusY
                target.scale = _statTargetScale + pinch.scale
                target.rotation = _statTargetRotation + pinch.rotation
            }

            anchors.fill: parent

            onPinchStarted: initiateTransformation(pinch)
            onPinchUpdated: updateTransformation(pinch)
            onPinchFinished: updateTransformation(pinch)
        }

        Flickable{
            anchors.centerIn: parent
            width: 200
            height: 200
            contentWidth: target.width
            contentHeight: target.height
            Image {
               id: target
               source: "img/cat.png"
               sourceSize.width: Math.max(Screen.width, Screen.height)
               transformOrigin: Item.TopLeft
            }
        }

}
