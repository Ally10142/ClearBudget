import Foundation

final class BudgetModel {

    // MARK: - Income
    let monthlyIncome: Double = 3000.00

    // MARK: - Bills
    let billsTotal: Double = 1200.00

    // MARK: - Goals
    let goalsTarget: Double = 2000.00
    let goalsCurrent: Double = 600.00

    var goalsProgress: Double {
        goalsCurrent / goalsTarget
    }
    // MARK: - Computed values
    var safeToSpend: Double {
        monthlyIncome - billsTotal
    }

    var safeToSpendProgress: Double {
        safeToSpend / monthlyIncome
    }

    var billsProgress: Double {
        billsTotal / monthlyIncome
    }
}
