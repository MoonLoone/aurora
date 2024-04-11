import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    objectName: "Task6"
    allowedOrientations: Orientation.All

    PageHeader {
            id:header
            objectName: "pageHeader"
            title: qsTr("Task6")
            extraContent.children: [
                Column{
                Button {
                    text: "Task5"
                    onClicked: pageStack.push(Qt.resolvedUrl("Task5.qml"))
                }
                Button {
                    text: "Task6"
                    onClicked: pageStack.push(Qt.resolvedUrl("Task6.qml"))
                }
                Button {
                    text: "Task7"
                    onClicked: pageStack.push(Qt.resolvedUrl("Task7.qml"))
                }
                }
            ]
        }

    Column {
            id: layout
            anchors {
                horizontalCenter: parent.horizontalCenter
                top: header.bottom
                topMargin: 112
            }
            spacing: 10
            Column {
                spacing: 5
                Button {
                    text: "Fragment 1"
                    onClicked: loader.source = "lder/Fragment1.qml"
                }
                Button {
                    text: "Fragment 2"
                    onClicked: loader.source = "lder/Fragment2.qml"
                }
                Button {
                    text: "Fragment 3"
                    onClicked: loader.source = "lder/Fragment3.qml"
                }
                Button {
                    text: "Fragment 4"
                    onClicked: loader.source = "lder/Fragment4.qml"
                }
                Button {
                    text: "Fragment 5"
                    onClicked: loader.source = "lder/Fragment5.qml"
                }
            }
            Loader {
                id: loader
            }

    }

}
