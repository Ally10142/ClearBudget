import SwiftUI

struct BillsAndPaychecksView: View {
    var body: some View {
        VStack(spacing: 24) {
            Text("Bills & Paychecks")
                .font(.largeTitle)
                .fontWeight(.bold)

            Text("This screen will show bills, income, and payment schedules.")
                .foregroundStyle(.secondary)

            Spacer()
        }
        .padding()
        .navigationTitle("Bills & Paychecks")
    }
}
