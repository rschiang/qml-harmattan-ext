import QtQuick 1.1
import com.nokia.meego 1.0

Item {
    id: header

    // Common public API
    property alias text: label.text
    property alias paddingItem: contentItem
    property alias enabled: mouseArea.enabled
    property alias pressed: mouseArea.pressed

    signal clicked

    // Styling for the header
    property Style platformStyle: ViewHeaderFixedStyle {}

    anchors.left: parent.left
    anchors.right: parent.right

    implicitHeight: platformStyle.headerHeight

    BorderImage {
        id: background
        anchors.fill: parent
        border {
            left: header.platformStyle.backgroundMarginLeft
            top: header.platformStyle.backgroundMarginTop
            right: header.platformStyle.backgroundMarginRight
            bottom: header.platformStyle.backgroundMarginBottom
        }
        source: pressed ? platformStyle.pressedBackground : platformStyle.background
    }

    MouseArea {
        id: mouseArea
        anchors.fill: parent
        onClicked: header.clicked()
    }

    Item {
        id: contentItem
        anchors {
            fill: parent
            leftMargin: platformStyle.backgroundMarginLeft
            rightMargin: platformStyle.backgroundMarginRight
            topMargin: platformStyle.backgroundMarginTop
            bottomMargin: platformStyle.backgroundMarginBottom
        }

        Text {
            id: label
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.verticalCenter: parent.verticalCenter
            horizontalAlignment: platformStyle.horizontalAlignment
            elide: Text.ElideRight

            font: platformStyle.headerFont
            color: pressed ? platformStyle.pressedTextColor : platformStyle.textColor
            visible: (text != "")
        }
    }
}
