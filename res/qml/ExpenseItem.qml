import QtQuick 2.3

Rectangle {
    property string personName
    property double dueAmount: 0.0

    Text {
        text: personName;
        anchors.left: parent.left
    }
    Text {
        text: '<b>Due amount:</b> ' + dueAmount;
        horizontalAlignment: Text.AlignRight;
        anchors.right: parent.right
    }
}
