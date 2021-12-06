import QtQuick 2.6
import QtQuick.Layouts 1.3
import QtQuick.Dialogs 1.2
import QtQuick.Window 2.2
import "."

Dialog {

    property string label: "New Item"
    property string hint: ""
    property alias editText: editTextItem

    standardButtons: StandardButton.Ok | StandardButton.Cancel
    onVisibleChanged: {
        editTextItem.focus = true
        editTextItem.selectAll()
    }
    onButtonClicked: {
        Qt.inputMethod.hide();
    }
    Rectangle {

        implicitWidth: parent.width
        implicitHeight: 100

        ColumnLayout {
            Text {
                id: labelItem
                text: label
                color: Style.text
            }

            TextInput {
                id: editTextItem
                inputMethodHints: Qt.ImhPreferUppercase
                text: hint
                color: Style.text
            }
        }
    }

}
