//
//  FoodListView.swift
//  FoodieGo
//
//  Created by Sanket Shah on 5/13/24.
//

import SwiftUI

struct FoodListView: View {
    @StateObject var viewModel = FoodListViewModel()
    
    var body: some View {
        ZStack{
            NavigationView {
                List(MockData.foodList) { food in
                    FoodListCell(food: food)
                        .listRowSeparator(.hidden)
                        .onTapGesture {
                            viewModel.selectedFood = food
                            viewModel.isShowingDetail = true
                        }
                }
                .navigationTitle("🇮🇳🥙 Indian Takeout")
                .listStyle(.plain)
                .disabled(viewModel.isShowingDetail)
                    
            }
            if viewModel.isShowingDetail {
                FoodDetailView(food: viewModel.selectedFood!,
                                    isShowingDetail: $viewModel.isShowingDetail)
            }
        }

    }
}

struct FoodListView_Previews: PreviewProvider {
    static var previews: some View {
        FoodListView()
    }
}
