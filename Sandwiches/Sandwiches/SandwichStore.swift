//
//  SandwichStore.swift
//  Sandwiches
//
//  Created by Nicholas McGinnis on 2/6/24.
//

import Foundation

class SandwichStore: ObservableObject {
    @Published var sandwiches: [Sandwich]
    
    init(sandwiches: [Sandwich] = []) {
        self.sandwiches = sandwiches
    }
}

let testStore = SandwichStore(sandwiches: testData)
