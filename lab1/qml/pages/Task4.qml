import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    objectName: "task4Page"
    allowedOrientations: Orientation.All

    PageHeader {
            objectName: "pageHeader"
            title: qsTr("Task4")
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
                }
            ]
        }

    Button {
            signal doubleClicked()
            signal pressed()
            signal released()
            anchors.centerIn: parent
            MouseArea {
                anchors.fill: parent
                onPressed: {
                    parent.pressed(console.log("pressed"));
                }
                onReleased: {
                    parent.released(console.log("released"))
                }
                onDoubleClicked: {
                    parent.doubleClicked(console.log("doubleClicked"))
                }
            }
        }

}
