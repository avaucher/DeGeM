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

    ListView {
        id: listView
        width: parent.width
        height: parent.height
        model: expenseModel
        delegate: ExpenseItem {
            width: parent.width
            height: 40
            dueAmount: model.dueAmount
            personName: model.personName
        }
    }
}
