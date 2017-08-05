#ifndef DEGEM_SINGLEEXPENSESUMMARY_H
#define DEGEM_SINGLEEXPENSESUMMARY_H

#include <string>

namespace DeGeM {

/*!
 * Expense total for a single person.
 */
class SingleExpenseSummary {
 public:
  SingleExpenseSummary(std::string name, double amount)
    : personName_(std::move(name)),
      amountDue_(amount) {
  }

  const std::string& getPersonName() const {
    return personName_;
  }

  double getDueAmount() const {
    return amountDue_;
  }

 private:
  std::string personName_;
  double amountDue_;
};

} // namespace DeGeM

#endif // DEGEM_SINGLEEXPENSESUMMARY_H