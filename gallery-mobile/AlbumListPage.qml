import QtQuick 2.6
import QtQuick.Layouts 1.3

import QtQuick.Controls 2.0

PageTheme {

    toolbarTitle: "Albums"
    toolbarButtons: ToolButton {
//        background: Image{
//            source: "qrc:/res/icons/album-add.svg"
//        }
        palette.button: Style.text //Temporary supplement for the background image.
        onClicked: {
            newAlbumDialog.open()
        }
    }

    InputDialog {
        id: newAlbumDialog
        title: "New Album"
        label: "Album Name:"
        hint: "My Album"

        onAccepted: {
            editText.focus = false
            albumModel.addAlbumFromName(editText.text)
        }
    }

    ListView {
        id: albumList
        model: albumModel
        spacing: 5
        anchors.fill: parent

        delegate: Rectangle {
            width: parent.width
            height: 120
            color: Style.buttonBackground

            Text {
                text: name
                font.pointSize: 16
                color: Style.text
                anchors.verticalCenter: parent.verticalCenter
            }

            MouseArea {
                anchors.fill: parent
                onClicked: {
                    albumList.currentIndex = index
                    pictureModel.setAlbumId(id)
                    pageStack.push("qrc:/qml/AlbumPage.qml",
                                   { albumName: name, albumRowIndex: index })
                }
            }
        }
    }
}
