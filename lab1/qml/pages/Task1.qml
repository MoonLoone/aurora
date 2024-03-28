import QtQuick 2.0
import Sailfish.Silica 1.0
import QtQuick.Layouts 1.1

Page {
    objectName: "task1Page"
    allowedOrientations: Orientation.All

    PageHeader {
            objectName: "pageHeader"
            title: qsTr("Task1")
            extraContent.children: [
                Column{
                    Button {
                        text: "Task2"
                        onClicked: pageStack.push(Qt.resolvedUrl("Task2.qml"))
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
        anchors.centerIn: parent
     id: printRect
    width: 400
    height: 400
    color: "lightgrey"
    Button {
       text: "Print to console"
       anchors.centerIn: parent
       onClicked: console.log("Hello, World!")
        }
    }
}
