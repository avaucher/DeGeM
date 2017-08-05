#ifndef DEGEM_EXPENSESUMMARYMODEL_H
#define DEGEM_EXPENSESUMMARYMODEL_H

#include "SingleExpenseSummary.h"
#include <QAbstractListModel>
#include <QtQml/QtQml>
#include <vector>

namespace DeGeM {

/*!
 * Summary class for the total expenses for the different persons.
 */
class ExpenseSummaryModel: public QAbstractListModel {
 Q_OBJECT

 public:
  using Container = std::vector<SingleExpenseSummary>;
  enum {
    PersonNameRole = Qt::UserRole + 1,
    DueAmountRole
  };

  explicit ExpenseSummaryModel(QObject* parent = nullptr);

  int rowCount(const QModelIndex& parent) const override;
  QVariant data(const QModelIndex& index, int role) const override;

 private:
  Container randomExpenses_;
};

} // namespace DeGeM

QML_DECLARE_TYPE(DeGeM::ExpenseSummaryModel)

#endif // DEGEM_EXPENSESUMMARYMODEL_H