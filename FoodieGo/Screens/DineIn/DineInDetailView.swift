//
//  DineInDetail.swift
//  FoodieGo
//
//  Created by Sanket Shah on 5/13/24.
//

import SwiftUI

struct DineInDetailView: View {
//    @EnvironmentObject var order: Order
    let resto: resto
    @Binding var isShowingDetail: Bool
    var body: some View {
        VStack {
            Image(resto.imageURL)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 300, height: 225)
                    
            VStack {
                Text(resto.name)
                    .font(.title2)
                    .fontWeight(.semibold)
                
                Text(resto.description)
                    .multilineTextAlignment(.center)
                    .font(.body)
                    .padding()
                
                HStack(spacing: 40) {
                    OtherInfo(title: "Rating", value: "\(resto.rating) Stars")
                    OtherInfo(title: "Distance", value: "\(resto.distance)")
                    OtherInfo(title: "Closes", value: "\(resto.closes)")
                }
            }
            
//            Spacer()
            
//            Button {
////                order.add(food)
//                isShowingDetail = false
//            } label: {
//                Text("Make Reservation")
//            }
//            .modifier(StandardButtonStyle())
//            .padding(.bottom, 30)
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

struct DineInDetailView_Previews: PreviewProvider {
    static var previews: some View {
        DineInDetailView(resto: MockrestoData.sampleresto,
                            isShowingDetail: .constant(true))
    }
}


struct OtherInfo: View {
    
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
