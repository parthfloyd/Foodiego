//
//  Item.swift
//  FoodieGo
//
//  Created by Sanket Shah on 5/13/24.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
