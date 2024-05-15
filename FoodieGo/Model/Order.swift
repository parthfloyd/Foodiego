//
//  Order.swift
//  FoodieGo
//
//  Created by Sanket Shah on 5/13/24.
//

import SwiftUI

final class Order: ObservableObject {
    
    @Published var items: [Food] = []
    
    
    var totalPrice: Double {
        items.reduce(0) { $0 + $1.price }
    }
    
    
    func add(_ food: Food) {
        items.append(food)
    }
    
    
    func deleteItems(at offsets: IndexSet) {
        items.remove(atOffsets: offsets)
    }
}
