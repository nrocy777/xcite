import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.3
import "Controls" as Controls

Rectangle {
    Layout.fillWidth: true
    Layout.maximumWidth: 250
    Layout.preferredWidth: 250
    Layout.minimumWidth: 250
    height: 40
    color: "#3A3E47"
    radius: 2

    MouseArea {
        id: mouseArea
        anchors.fill: parent
        hoverEnabled: xchatpopup.visible == false
        onClicked: {
            xchatpopup.visible = !xchatpopup.visible
        }
        onHoveredChanged: {
            if (containsMouse) {
                parent.color = "#434751"
            }
            else {
                parent.color = "#3A3E47"
            }
        }
    }

    Label {
        id: xchatLabel
        text: qsTr("X-CHAT")
        anchors.left: parent.left
        anchors.verticalCenter: parent.verticalCenter
        font.family: "Roboto Thin"
        font.pixelSize: 15
        color: "#FFFFFF"
        anchors.leftMargin: 10
    }

    RowLayout {
        anchors.right: parent.right
        anchors.rightMargin: 10
        height: parent.height

        Controls.ButtonDiode {
            id: xchatUsersButton
            imageSource: "icons/friend-request.svg"
            size: 25
            isSelected: false
            onButtonClicked: {
                xchatBotsButton.isSelected = false
            }
        }

        Controls.ButtonDiode {
            id: xchatBotsButton
            imageSource: "icons/robot.svg"
            size: 25
            isSelected: true
            onButtonClicked: {
                xchatUsersButton.isSelected = false
            }
        }
    }
}
