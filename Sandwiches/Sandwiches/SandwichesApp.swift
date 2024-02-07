//
//  SandwichesApp.swift
//  Sandwiches
//
//  Created by Nicholas McGinnis on 2/6/24.
//

import SwiftUI

@main
struct SandwichesApp: App {
    @StateObject private var store = SandwichStore()

    var body: some Scene {
        WindowGroup {
            ContentView(store: store)
        }
    }
}
