//
//  OrderView.swift
//  SwiftUI-Appetizers
//
//  Created by Nicholas McGinnis on 9/14/23.
//

import SwiftUI

struct OrderView: View {
    var body: some View {
        NavigationView {
            Text("Order View")
                .navigationTitle("My Order")
        }
    }
}

struct OrderView_Previews: PreviewProvider {
    static var previews: some View {
        OrderView()
    }
}
