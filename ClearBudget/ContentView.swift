//
//  ContentView.swift
//  ClearBudget
//
//  Created by Patrick on 2/3/26.
//

import SwiftUI
struct ContentView: View {
    var body: some View {
        NavigationStack {
            VStack(spacing: 24) {

                Text("ClearBudget")
                    .font(.largeTitle)
                    .fontWeight(.bold)

                Text("Smarter Budgets, Real Paychecks")
                    .foregroundStyle(.secondary)

                RoundedRectangle(cornerRadius: 16)
                    .fill(Color.green.opacity(0.25))
                    .frame(height: 120)
                    .overlay(
                        VStack(spacing: 8) {
                            Text("Safe to Spend")
                                .font(.headline)

                            Text("$0.00")
                                .font(.title)
                                .fontWeight(.bold)
                        }
                    )

                Spacer()
            }
            .padding()
            .navigationTitle("Home")
        }
    }
}
