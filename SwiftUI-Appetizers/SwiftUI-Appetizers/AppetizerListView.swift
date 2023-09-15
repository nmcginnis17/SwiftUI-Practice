//
//  AppetizerListView.swift
//  SwiftUI-Appetizers
//
//  Created by Nicholas McGinnis on 9/14/23.
//

import SwiftUI

struct AppetizerListView: View {
    var body: some View {
        NavigationView {
            Text("Appetizer List View")
                .navigationTitle("Appetizers")
        }
    }
}

struct AppetizerListView_Previews: PreviewProvider {
    static var previews: some View {
        AppetizerListView()
    }
}
