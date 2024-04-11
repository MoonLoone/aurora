import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    objectName: "Task3"
    allowedOrientations: Orientation.All

    PageHeader {
            id:header
            objectName: "pageHeader"
            title: qsTr("Task3")
            extraContent.children: [
                Column{
                Button {
                    text: "Task2"
                    onClicked: pageStack.push(Qt.resolvedUrl("Task2.qml"))
                }
                Button {
                    text: "Task4"
                    onClicked: pageStack.push(Qt.resolvedUrl("Task4.qml"))
                }
                Button {
                    text: "Task5"
                    onClicked: pageStack.push(Qt.resolvedUrl("Task5.qml"))
                }
                }
            ]
        }

    Rectangle {
        anchors.centerIn: parent
        width: 400; height: 400
        color: "blue"
        transform: Rotation { origin.x: 25; origin.y: 25; angle: 45}
    }

    Rectangle {
            anchors.centerIn: parent
            width: 100; height: 400
            color: "blue"
            transform: Scale { origin.x: 25; origin.y: 25; xScale: 4}
        }


}
