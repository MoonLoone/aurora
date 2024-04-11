import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    objectName: "Task7"
    allowedOrientations: Orientation.All

    PageHeader {
            id:header
            objectName: "pageHeader"
            title: qsTr("Task7")
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
                    text: "Task3"
                    onClicked: pageStack.push(Qt.resolvedUrl("Task3.qml"))
                }
                }
            ]
        }

    Item {
            id: root
            width: 500
            height: 500
            anchors {
                horizontalCenter: parent.horizontalCenter
                top: header.bottom
                topMargin: 112
            }
            Component {
                id: myButtonComponent
                Button {
                    anchors.centerIn: parent
                    text: "Динамическая кнопка"
                    onClicked: console.log("нажата динамическая кнопка")
                }
            }
            MouseArea {
                anchors.fill: parent
                onClicked: {
                    var dynamicButton = myButtonComponent.createObject(root)
                    dynamicButton.x = mouseX
                    dynamicButton.y = mouseY
                }
            }
        }


}
