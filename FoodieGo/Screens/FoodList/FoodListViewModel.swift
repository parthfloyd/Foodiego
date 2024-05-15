//
//  FoodListViewModel.swift
//  FoodieGo
//
//  Created by Sanket Shah on 5/13/24.
//

import SwiftUI

@MainActor final class FoodListViewModel: ObservableObject {
    
    @Published var isLoading = false
    @Published var isShowingDetail = false
    @Published var selectedFood: Food?
}
