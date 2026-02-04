import SwiftUI

struct SummaryCardView: View {
    let title: String
    let amount: Double
    let progress: Double
    let accentColor: Color


    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text(title)
                .font(.headline)

            Text("$\(amount, specifier: "%.2f")")
                .font(.largeTitle)
                .fontWeight(.bold)

            ProgressView(value: progress, total: 1.0)
                .progressViewStyle(.linear)
                .tint(accentColor)
                .scaleEffect(x: 1, y: 2)
                .animation(.easeInOut(duration: 0.6), value: progress)
        }
        .padding()
        .background {
            RoundedRectangle(cornerRadius: 16)
                .fill(accentColor.opacity(0.25))
        }
    }
}
