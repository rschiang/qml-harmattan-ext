import QtQuick 1.1
import com.nokia.meego 1.0 // for Style

Style {
    // Font
    property variant headerFont: UiConstants.HeaderFont
    property int horizontalAlignment: Text.AlignLeft

    // Color
    property color textColor: inverted?"#fff":"#191919"
    property color pressedTextColor: textColor

    // Dimensions
    property int headerHeight: inPortrait ? UiConstants.HeaderDefaultHeightPortrait
                                          : 64 //UiConstants.HeaderDefaultHeightLandscape

    // Background
    property int backgroundMarginRight: UiConstants.DefaultMargin
    property int backgroundMarginLeft: UiConstants.DefaultMargin
    property int backgroundMarginTop: inPortrait ? UiConstants.HeaderDefaultTopSpacingPortrait
                                                 : UiConstants.HeaderDefaultTopSpacingLandscape
    property int backgroundMarginBottom: inPortrait ? UiConstants.HeaderDefaultBottomSpacingPortrait
                                                    : UiConstants.HeaderDefaultBottomSpacingLandscape

    property url background: "image://theme/meegotouch-view-header" + __invertedString
    property url pressedBackground: background
}
