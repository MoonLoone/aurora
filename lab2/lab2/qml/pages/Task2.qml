import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    objectName: "Task2"
    allowedOrientations: Orientation.All

    PageHeader {
            id:header
            objectName: "pageHeader"
            title: qsTr("Task1")
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
        id: myRect
        width: 250; height: 250
        color: "lightgreen"
        Text {
            anchors.centerIn: parent
            text: qsTr("Привет, мир! :)")
        }
        MouseArea {
            id: mouseArea
            anchors.fill: parent
            onClicked: myRect.state == 'clicked' ? myRect.state = "" : myRect.state
            = 'clicked';
        }
        states: [
            State {
                name: "clicked"
                PropertyChanges { target: myRect; x: 400; y: 1000 }
            }
        ]
    }


}
