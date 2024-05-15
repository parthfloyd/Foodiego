//
//  DineInView.swift
//  FoodieGo
//
//  Created by Sanket Shah on 5/14/24.
//

import SwiftUI

struct DineInView: View {
    @StateObject var viewModel = DineInViewModel()
    
    var body: some View {
        ZStack{
            NavigationView {
                List(MockrestoData.restoList) { resto in
                    DineInListCell(resto: resto)
                        .listRowSeparator(.hidden)
                        .onTapGesture {
                            viewModel.selectedResto = resto
                            viewModel.isShowingDetail = true
                        }
                }
                .navigationTitle("🍴Dine In")
                .listStyle(.plain)
                .disabled(viewModel.isShowingDetail)
                    
            }
            if viewModel.isShowingDetail {
                DineInDetailView(resto: viewModel.selectedResto!,
                                    isShowingDetail: $viewModel.isShowingDetail)
            }
        }

    }
}

struct DineInView_Previews: PreviewProvider {
    static var previews: some View {
        DineInView()
    }
}
