//
//  FoodDetailView.swift
//  FoodieGo
//
//  Created by Sanket Shah on 5/13/24.
//

import SwiftUI

struct FoodDetailView: View {
    @EnvironmentObject var order: Order
    let food: Food
    @Binding var isShowingDetail: Bool
    var body: some View {
        VStack {
            Image(food.imageURL)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 300, height: 225)
                    
            VStack {
                Text(food.name)
                    .font(.title2)
                    .fontWeight(.semibold)
                
                Text(food.description)
                    .multilineTextAlignment(.center)
                    .font(.body)
                    .padding()
                
                HStack(spacing: 40) {
                    NutritionInfo(title: "Calories", value: "\(food.calories)")
                    NutritionInfo(title: "Carbs", value: "\(food.carbs) g")
                    NutritionInfo(title: "Protein", value: "\(food.protein) g")
                }
            }
            
            Spacer()
            
            Button {
                order.add(food)
                isShowingDetail = false
            } label: {
                Text("$\(food.price, specifier: "%.2f") - Add to Order")
            }
            .modifier(StandardButtonStyle())
            .padding(.bottom, 30)
        }
        .frame(width: 300, height: 525)
        .background(Color(.systemBackground))
        .cornerRadius(12)
        .shadow(radius: 40)
        .overlay(Button {
            isShowingDetail = false
        } label: {
            XDismissButton()
        }, alignment: .topTrailing)
    }
}

struct FoodDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FoodDetailView(food: MockData.sampleFood,
                            isShowingDetail: .constant(true))
    }
}


struct NutritionInfo: View {
    
    let title: String
    let value: String
    
    var body: some View {
        VStack(spacing: 5) {
            Text(title)
                .bold()
                .font(.caption)
            
            Text(value)
                .foregroundColor(.secondary)
                .fontWeight(.semibold)
                .italic()
        }
    }
}
