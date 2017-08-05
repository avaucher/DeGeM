import QtQuick 2.3
import QtQuick.Templates 2.1
import QtQuick.Controls 2.1
import Local 1.0

Rectangle {
    id: rectangle
    width: 400
    height: 400
    color: "#f4f4f4"

    ExpenseSummaryModel {
        id: expenseModel
    }

    GridView {
        anchors.fill: parent
        model: expenseModel
        delegate: Column {
            Text { text: personName; anchors.horizontalCenter: parent.horizontalCenter }
            Text { text: dueAmount; anchors.horizontalCenter: parent.horizontalCenter }
        }
    }

    SpinBox {
        id: spinBox
        x: 18
        y: 91
        stepSize: 1
    }

    Switch {
        id: switch1
        x: 8
        y: 29
        text: qsTr("no")
    }

    Rectangle {
        id: rectangle1
        width: 131
        height: 95
        color: "#8ae234"
        x: rectangle2.x - 50
        y: rectangle2.y - 45
        Behavior on y { SpringAnimation{ spring: 1.0; damping: 0.2 } }
        Behavior on x { SpringAnimation{ spring: 1.0; damping: 0.2 } }
        MouseArea {
            id: mouseArea
            anchors.fill: parent
        }
    }

    Rectangle {
        id: rectangle2
        x: 127
        y: 280
        width: 147
        height: 81
        color: "#fcaf3e"

        MouseArea {
            id: mouseArea1
            anchors.fill: parent
            drag.target: parent
        }
    }

    Button {
        id: button
        x: 239
        y: 66
        text: qsTr("Button")
    }

    CheckBox {
        id: checkBox
        x: 231
        y: 132
        text: qsTr("Check Box")
    }

    Connections {
        target: checkBox
        onClicked: { rectangle.state = "State1" }
    }
    states: [
        State {
            name: "State1"

            PropertyChanges {
                target: spinBox
                x: 219
                y: 205
            }

            PropertyChanges {
                target: switch1
                x: 244
                y: 13
            }

            PropertyChanges {
                target: button
                x: 24
                y: 22
            }

            PropertyChanges {
                target: checkBox
                x: 8
                y: 115
            }
        }
    ]
}
