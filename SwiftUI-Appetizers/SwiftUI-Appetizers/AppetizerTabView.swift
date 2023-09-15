//
//  AppetizerTabView.swift
//  SwiftUI-Appetizers
//
//  Created by Nicholas McGinnis on 9/14/23.
//

import SwiftUI

struct AppetizerTabView: View {
    var body: some View {
        TabView {
            AppetizerListView()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }
            AccountView()
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("Account")
                }
            OrderView()
                .tabItem {
                    Image(systemName: "bag.fill")
                    Text("Order")
                }
        }
        .tint(Color("brandPrimary"))
    }
}

struct AppetizerTabView_Previews: PreviewProvider {
    static var previews: some View {
        AppetizerTabView()
    }
}
