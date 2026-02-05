import SwiftUI

struct GoalsView: View {
    let goalsCurrent: Double
    let goalsTarget: Double

    var body: some View {
        VStack(spacing: 24) {

            Text("Goals")
                .font(.largeTitle)
                .fontWeight(.bold)

            Text("$\(goalsCurrent, specifier: "%.2f") of $\(goalsTarget, specifier: "%.2f")")
                .font(.title)
                .fontWeight(.semibold)

            ProgressView(value: goalsCurrent, total: goalsTarget)
                .progressViewStyle(.linear)
                .tint(.purple)
                .scaleEffect(x: 1, y: 2)

            Spacer()
        }
        .padding()
        .navigationTitle("Goals")
        .withBackButton()
    }
}
