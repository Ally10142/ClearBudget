import SwiftUI

struct SafeToSpendDetailView: View {
    let safeToSpend: Double

    var body: some View {
        VStack(spacing: 24) {
            Text("Safe to Spend")
                .font(.largeTitle)
                .fontWeight(.bold)

            Text("$\(safeToSpend, specifier: "%.2f")")
                .font(.title)
                .fontWeight(.bold)
                .foregroundStyle(.green)
                .font(.largeTitle)
                .fontWeight(.bold)

            Text("This screen will show detailed breakdowns, bills, and goals.")
                .foregroundStyle(.secondary)

            Spacer()
        }
        .padding()
        .navigationTitle("Safe to Spend")
    }
}
