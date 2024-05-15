//
//  OrderView.swift
//  FoodieGo
//
//  Created by Sanket Shah on 5/13/24.
//

import SwiftUI

struct OrderView: View {
    
    @EnvironmentObject var order: Order
    @State private var showToast = false
    
    var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    List {
                        ForEach(order.items) { food in
                            FoodListCell(food: food)
                        }
                        .onDelete(perform: order.deleteItems)
                    }
                    .listStyle(PlainListStyle())
                    
                    Button {
                        
                        print("order placed")
                        order.items.removeAll()
                        withAnimation {
                            showToast = true
                        }
                        // Automatically hide the toast after 3 seconds
                        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                            withAnimation {
                                showToast = false
                            }
                        }
                    } label: {
                        Text("$\(order.totalPrice, specifier: "%.2f") - Place Order")
                    }
                    .modifier(StandardButtonStyle())
                    .padding(.bottom, 25)
                }
                
                if showToast {
                    ToastView(message: "Order placed successfully!")
                        .transition(.opacity) // Fade in and out
                        .zIndex(1) // Make sure the toast is on top of other content

                }
                
                if order.items.isEmpty && showToast == false{
                    EmptyState(imageName: "empty-order",
                               message: "You have no items in your order.\nPlease add an appetizer!")
                }
            }
            .navigationTitle("🧾 Orders")
        }
    }
}

struct OrderView_Previews: PreviewProvider {
    static var previews: some View {
        OrderView()
    }
}
