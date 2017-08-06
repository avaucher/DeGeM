import QtQuick 2.3

Rectangle {
    property string personName
    property double dueAmount: 0.0
    height: personNameText.height + 5

    Text {
        id: personNameText
        text: personName;
        anchors.left: parent.left
        anchors.verticalCenter: parent.verticalCenter
    }
    Text {
        id: dueAmountText
        text: '<b>Due amount:</b> ' + dueAmount;
        color: dueAmount > 0 ? "red" : "green";
        horizontalAlignment: Text.AlignRight;
        anchors.right: parent.right
        anchors.verticalCenter: parent.verticalCenter
    }
}
