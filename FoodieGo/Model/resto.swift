//
//  resto.swift
//  FoodieGo
//
//  Created by Sanket Shah on 5/14/24.
//

import Foundation

struct resto: Decodable, Identifiable {
    let id: Int
    let name: String
    let description: String
    let opens: String
    let imageURL: String
    let rating: Double
    let distance: String
    let closes: String

}

struct restoResponse {
    let request: [resto]
}

struct MockrestoData {
    static let sampleresto = resto(id: 1, name: "Five Guys", description: "Premium burgers", opens: "Opens 11 AM", imageURL: "five-guys", rating: 4.5, distance: "5 mi", closes: "6 PM")
    static let restoList = [
        resto(id: 1, name: "Five Guys", description: "Premium burgers", opens: "Opens 11 AM", imageURL: "five-guys", rating: 4.5, distance: "5 mi", closes: "6 PM"),
        resto(id: 2, name: "Mcdonalds", description: "Cheap burgers", opens: "Opens 10 AM", imageURL: "mcdonalds", rating: 4.1, distance: "5 mi", closes: "10 PM"),
        resto(id: 3, name: "In-n-Out", description: "Classic burgers", opens: "Opens 10 AM", imageURL: "in-n-out", rating: 4.3, distance: "7 mi", closes: "8 PM"),
        resto(id: 4, name: "Jack in the Box", description: "Burgers, Fries and More", opens: "Opens 9 AM", imageURL: "jack-in", rating: 4.6, distance: "3 mi", closes: "7 PM"),
        resto(id: 5, name: "Taco Bell", description: "Tacos, Burritos and More", opens: "Opens 8 AM", imageURL: "taco-bell", rating: 4.2, distance: "8 mi", closes: "8 PM"),
        
        
    ]
}
