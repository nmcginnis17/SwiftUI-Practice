//
//  SandwichDetail.swift
//  Sandwiches
//
//  Created by Nicholas McGinnis on 2/6/24.
//

import SwiftUI

struct SandwichDetail: View {
    var sandwich: Sandwich
    var body: some View {
        Image(sandwich.imageName)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .navigationTitle(sandwich.name)
    }
}

#Preview {
    NavigationView {
        SandwichDetail(sandwich: testData[0])
    }
}
