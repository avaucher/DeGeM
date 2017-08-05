#include "ExpenseSummaryModel.h"

namespace DeGeM {

ExpenseSummaryModel::ExpenseSummaryModel(QObject* parent)
  : QAbstractListModel(parent) {
  randomExpenses_.emplace_back("John", -2.0);
  randomExpenses_.emplace_back("Julia", 12.0);
  randomExpenses_.emplace_back("Anna", -10.0);
}

int ExpenseSummaryModel::rowCount(const QModelIndex& parent) const {
  return static_cast<int>(randomExpenses_.size());
}

QVariant ExpenseSummaryModel::data(const QModelIndex& index, int role) const {
  if (!index.isValid() || index.row() < 0)
    return QVariant();

  if (index.row() >= static_cast<int>(randomExpenses_.size())) {
    return QVariant();
  }

  const auto& expense = randomExpenses_[index.row()];
  switch (role) {
    case PersonNameRole:
      return QString::fromStdString(expense.getPersonName());
    case DueAmountRole:
      return expense.getDueAmount();
    default:
      break;
  }

  return QVariant();
}

} // namespace DeGeM