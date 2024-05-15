//
//  FoodListCell.swift
//  FoodieGo
//
//  Created by Sanket Shah on 5/13/24.
//

import SwiftUI

struct FoodListCell: View {
    
    let food: Food
    var body: some View {
        HStack {
            Image(food.imageURL)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 120, height:90)
                .cornerRadius(8)
            
            VStack(alignment: .leading, spacing: 5) {
                Text(food.name)
                    .font(.title2)
                    .fontWeight(.medium)
                
                Text("$\(food.price, specifier: "%.2f")")
                    .foregroundColor(.secondary)
                    .fontWeight(.semibold)
            }
            .padding(.leading)
        }
    }
}

#Preview {
    FoodListCell(food: MockData.sampleFood)
}
