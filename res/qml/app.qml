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

    Component {
        id: expenseDelegate
        Item {
            width: 180; height: 40
            Row {
                Text { text: personName }
                Text { text: '<b>Due amount:</b> ' + dueAmount }
            }
        }
    }

    ListView {
        anchors.fill: parent
        model: expenseModel
        delegate: expenseDelegate
    }
}
