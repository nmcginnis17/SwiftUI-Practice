//
//  AccountView.swift
//  SwiftUI-Appetizers
//
//  Created by Nicholas McGinnis on 9/14/23.
//

import SwiftUI

struct AccountView: View {
    var body: some View {
        NavigationView {
            Text("Account View")
                .navigationTitle("Account")
        }
    }
}

struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        AccountView()
    }
}
