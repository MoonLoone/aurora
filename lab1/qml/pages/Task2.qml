import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    objectName: "task2Page"
    allowedOrientations: Orientation.All

    PageHeader {
            objectName: "pageHeader"
            title: qsTr("Task2")
            extraContent.children: [
                Column{
                Button {
                    text: "Task1"
                    onClicked: pageStack.push(Qt.resolvedUrl("Task1.qml"))
                }
                Button {
                    text: "Task3"
                    onClicked: pageStack.push(Qt.resolvedUrl("Task3.qml"))
                }
                Button {
                    text: "Task4"
                    onClicked: pageStack.push(Qt.resolvedUrl("Task4.qml"))
                }
                }
            ]
        }

    Rectangle {
            id: root
            width: 400
            height: 400
            anchors.centerIn: parent
            color: "lightgrey"
    signal buttonClicked(int buttonNumber)
            Button {
                text: "Button 1"
                anchors.centerIn: parent
                onClicked: {
                    root.buttonClicked(1)
                }
            }

            Button {
                text: "Button 2"
                anchors.bottom: parent.bottom
                anchors.horizontalCenter: parent.horizontalCenter
                onClicked: {
                    root.buttonClicked(2)
                }
            }

            Button {
                text: "Button 3"
                anchors.top: parent.top
                anchors.horizontalCenter: parent.horizontalCenter
                onClicked: {
                    root.buttonClicked(3)
                }
            }

            Connections {
            target: root
                onButtonClicked: {
                 console.log("Button", buttonNumber, "clicked!")
                }
            }
            }
}
