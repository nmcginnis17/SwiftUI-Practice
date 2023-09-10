//
//  FrameworkGridViewModel.swift
//  SwiftUI-Apple-Frameworks
//
//  Created by Nicholas McGinnis on 9/10/23.
//

import SwiftUI

final class FrameworkGridViewModel: ObservableObject {
    
    var selectedFramework: Framework? {
        didSet {
            isShowingDetailView = true
        }
    }
    
    
    @Published var isShowingDetailView = false
    
}
