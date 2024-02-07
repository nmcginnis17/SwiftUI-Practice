//
//  ContentView.swift
//  Sandwiches
//
//  Created by Nicholas McGinnis on 2/6/24.
//

import SwiftUI

struct ContentView: View {
    var sandwiches: [Sandwich] = []
    var body: some View {
        NavigationView {
            List {
                ForEach(sandwiches) { sandwich in
                    SandwichCell(sandwich: sandwich)
                }
                HStack {
                    Spacer()
                    Text("\(sandwiches.count) Sandwiches")
                        .foregroundStyle(.secondary)
                    Spacer()
                }
            }
            .navigationTitle("Sandwiches")
        }
    }
}

#Preview {
    ContentView(sandwiches: testData)
}

struct SandwichCell: View {
    var sandwich: Sandwich
    var body: some View {
        NavigationLink(destination: SandwichDetail(sandwich: sandwich)) {
            Image(systemName: sandwich.thumbnailName)
                .cornerRadius(8)
            
            VStack(alignment: .leading) {
                Text(sandwich.name)
                Text("\(sandwich.ingredientCount) ingredients")
                    .font(.subheadline)
                    .foregroundStyle(.secondary)
            }
        }
    }
}
