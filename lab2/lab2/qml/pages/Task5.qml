import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    objectName: "Task4"
    allowedOrientations: Orientation.All

    PageHeader {
            id:header
            objectName: "pageHeader"
            title: qsTr("Task4")
            extraContent.children: [
                Column{
                Button {
                    text: "Task3"
                    onClicked: pageStack.push(Qt.resolvedUrl("Task3.qml"))
                }
                Button {
                    text: "Task5"
                    onClicked: pageStack.push(Qt.resolvedUrl("Task5.qml"))
                }
                Button {
                    text: "Task6"
                    onClicked: pageStack.push(Qt.resolvedUrl("Task6.qml"))
                }
                }
            ]
        }

    //rotation
    Rectangle {
               id: rectRotation
             width: 100
             height: 100
             color: "lightgreen"
             anchors.centerIn: parent
             RotationAnimation on rotation {
                loops: Animation.Infinite
                 from: 0
                 to: 360
            }
         }

    //move right
    Rectangle {
            id: rectRight
            width: 200
            height: 200
            color: "white"
            anchors.top: rectRotation.bottom
            Behavior on x {
                NumberAnimation {
                    duration: 1000
                }
            }
            MouseArea {
                anchors.fill: parent
                onClicked: {
                    rectRight.x += 200
                }
            }
        }

    Rectangle {
        id: rectFill
        property bool isAnimating: false
        width: 300
        height: 300
        color: "blue"
        anchors.top: rectRight.bottom
        MouseArea {
            anchors.fill: parent
            onClicked: {
                if (!rectFill.isAnimating)
                animation.running = true
                else
                animation.stop()
            }
        }
        NumberAnimation {
            id: animation
            target: rectFill
            property: "width"
            to: 200
            duration: 500
            onStarted: rectFill.isAnimating = true
            onStopped: rectFill.isAnimating = false
        }
    }



}
