//
//  DineInViewModel.swift
//  FoodieGo
//
//  Created by Sanket Shah on 5/14/24.
//

import SwiftUI

@MainActor final class DineInViewModel: ObservableObject {
    
    @Published var isLoading = false
    @Published var isShowingDetail = false
    @Published var selectedResto: resto?
}
