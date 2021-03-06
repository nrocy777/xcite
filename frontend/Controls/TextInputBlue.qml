import QtQuick 2.0
import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.4

Column {
    id: column
    width: 250
    height: 40

    property alias text: input.text
    property alias input: input
    property alias echoMode: input.echoMode
    property alias placeholder: input.placeholderText

    TextField {
        id: input
        height: 40
        width: column.width
        font.pointSize: 10
        font.family: "Roboto Thin"
        placeholderText: placeholder
        anchors.horizontalCenter: parent.horizontalCenter
        style: TextFieldStyle {
            textColor: "#10B9C5"
            placeholderTextColor: "#10B9C5"
            background: Rectangle {
                color: "transparent"
            }
        }
    }

    Rectangle {
        height: 1
        width: column.width
        color: "#10B9C5"
        anchors.horizontalCenter: parent.horizontalCenter
    }
}


