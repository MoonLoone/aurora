import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    objectName: "Task1"
    allowedOrientations: Orientation.All

    PageHeader {
            id:header
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

        Row {
            id: colorTools
            anchors {
                horizontalCenter: parent.horizontalCenter
                top: header.bottom
                topMargin: 96
            }
            clip: true
            Slider {
                id: lineWidthSlider
                x: -80
                width: 400
                minimumValue: 1
                maximumValue: 100
                stepSize: 1
                value: 2
                onValueChanged: {
                    canvas.lineWidth = value
                }
            }
            property color paintColor: "#33B5E5"
            spacing: 4
            Repeater {
                model: ["#33B5E5", "#99CC00", "#FFBB33", "#FF4444", "pink"]
                Button {
                    id: rect
                    color: modelData
                    width: 50
                    height: 50
                    backgroundColor: parent.paintColor = color
                    onClicked: {
                        parent.paintColor = color
                    }
                }
            }
        }
        Canvas {
            id: canvas
            anchors {
                left: parent.left
                right: parent.right
                top: colorTools.bottom
                bottom: parent.bottom
                margins: 8
            }
            property real lastX
            property real lastY
            property color color: colorTools.paintColor
            property real lineWidth: lineWidthSlider.value
            onPaint: {
                var ctx = getContext('2d')
                ctx.lineWidth = canvas.lineWidth
                ctx.strokeStyle = canvas.color
                ctx.beginPath()
                ctx.moveTo(lastX, lastY)
                lastX = area.mouseX
                lastY = area.mouseY
                ctx.lineTo(lastX, lastY)
                ctx.stroke()
            }
            MouseArea {
                id: area
                anchors.fill: parent
                onPressed: {
                    canvas.lastX = mouseX
                    canvas.lastY = mouseY
                }
                onPositionChanged: {
                    canvas.requestPaint()
                }
            }
        }

}
