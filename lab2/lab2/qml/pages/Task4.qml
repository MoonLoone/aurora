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

    ListView {
        id: listView
        anchors {
            top: header.bottom
            topMargin: 96
        }
        width: parent.width
        height: parent.height
        model: ["Item 1", "Item 2", "Item 3", "Item 4", "Item 5", "Item 6"]
        delegate: Item {
            width: parent.width
            height: 100
            Text {
                text: modelData
                font.pointSize: 32
                anchors.centerIn: parent
            }
            MouseArea {
                id: mouseArea
                anchors.fill: parent
                onClicked: {
                console.log("Clicked: " + modelData)
                }
                onPressed: {
                console.log("Pressed: " + modelData)
                // Запуск анимации
                }
                onReleased: {
                    console.log("Released: " + modelData)
                    // Остановка анимации
                    }
                    onPositionChanged: {
                    console.log("Position changed: " + modelData)
                    // Остановка анимации и выполнение соответствующих действий
                    }
               }
       }
    }


}
