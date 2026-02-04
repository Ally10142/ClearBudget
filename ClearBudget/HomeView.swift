import SwiftUI

struct HomeView: View {
    
    
    let budget = BudgetModel()
    
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 24) {
                
                NavigationLink {
                    SafeToSpendDetailView(
                        safeToSpend: budget.safeToSpend
                    )
                } label: {
                    SummaryCardView(
                        title: "Safe to Spend",
                        amount: budget.safeToSpend,
                        progress: budget.safeToSpendProgress,
                        accentColor: .green
                    )
                }
                .buttonStyle(.plain)
                
                NavigationLink {
                    BillsAndPaychecksView()
                } label: {
                    SummaryCardView(
                        title: "Bills & Paychecks",
                        amount: budget.billsTotal,
                        progress: budget.billsProgress,
                        accentColor: .blue
                    )
                }
                .buttonStyle(.plain)
                
                NavigationLink {
                    GoalsView(
                        goalsCurrent: budget.goalsCurrent,
                        goalsTarget: budget.goalsTarget
                    )
                } label: {
                    SummaryCardView(
                        title: "Goals",
                        amount: budget.goalsCurrent,
                        progress: budget.goalsProgress,
                        accentColor: .purple
                    )
                }
                .buttonStyle(.plain)
            }
        }
    }
}
