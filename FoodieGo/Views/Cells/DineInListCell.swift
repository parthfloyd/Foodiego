//
//  DineInListCell.swift
//  FoodieGo
//
//  Created by Sanket Shah on 5/14/24.
//

import SwiftUI

struct DineInListCell: View {
    
    let resto: resto
    var body: some View {
        HStack {
            Image(resto.imageURL)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 120, height:90)
                .cornerRadius(8)
            
            VStack(alignment: .leading, spacing: 5) {
                Text(resto.name)
                    .font(.title2)
                    .fontWeight(.medium)
                
                Text(resto.opens)
                    .foregroundColor(.secondary)
                    .fontWeight(.semibold)
            }
            .padding(.leading)
        }
    }
}

#Preview {
    DineInListCell(resto: MockrestoData.sampleresto)
}
