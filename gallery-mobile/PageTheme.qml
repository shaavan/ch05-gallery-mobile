//contains all code related to the page's toolbar and theme
import QtQuick 2.0

import QtQuick.Layouts 1.3
import QtQuick.Controls 2.0
import "."

Page {

    property alias toolbarButtons: buttonsLoader.sourceComponent
    property alias toolbarTitle: titleLabel.text

    header: ToolBarTheme {
        RowLayout {
            anchors.fill: parent
            ToolButton {
//                background: Image {
//                    source: "qrc:/res/icons/back.svg"
//                }
                palette.button: Style.text //Temporary supplement for the image.
                onClicked: {
                    if(stackView.depth > 1) {
                        stackView.pop()
                    }
                }
            }

            Label {
                id: titleLabel
                Layout.fillWidth: true
                color: Style.text
                elide: Text.ElideRight
                font.pointSize: 30
            }

            Loader {
                Layout.alignment: Qt.AlignRight
                id: buttonsLoader
            }
        }

        Rectangle {
            color: Style.pageBackground
            anchors.fill: parent
        }
    }
}
