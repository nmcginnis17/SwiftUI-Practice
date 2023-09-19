//
//  AppetizersListViewModel.swift
//  SwiftUI-Appetizers
//
//  Created by Nicholas McGinnis on 9/19/23.
//

import SwiftUI

final class AppetizersListViewModel: ObservableObject {
    
    @Published var appetizers: [Appetizer] = []
    
    func getAppetizers() {
        NetworkManager.shared.getAppetizers { result in
            DispatchQueue.main.async {
                switch result {
                case .success(let appetizers):
                    self.appetizers = appetizers
                case .failure(let error):
                    print(error.localizedDescription)
                    
                }
            }
        }
    }
    
}
