//
//  Food.swift
//  FoodieGo
//
//  Created by Sanket Shah on 5/13/24.
//

import Foundation

struct Food: Decodable, Identifiable {
    let id: Int
    let name: String
    let description: String
    let price: Double
    let imageURL: String
    let calories: Int
    let protein: Int
    let carbs: Int

}

struct FoodResponse {
    let request: [Food]
}

struct MockData {
    static let sampleFood = Food(id: 1, name: "Asian Flank Steak", description: "This is the description for my appetizer", price: 17.5, imageURL: "asian-flank-steak", calories: 400, protein: 25, carbs: 0)
    static let foodList = [
        Food(id: 15, name: "Pav Bhaji", description: "Pav Bread with sour and spicy bhaji", price: 8.99, imageURL: "pav-bhaji", calories: 300, protein: 25, carbs: 0),
        Food(id: 1, name: "Asian Flank Steak", description: "This perfectly thin cut just melts in your mouth.", price: 8.99, imageURL: "asian-flank-steak", calories: 300, protein: 25, carbs: 0),

        Food(id: 16, name: "Dhokla", description: "Sweet and Sour Yello Dhokla", price: 6.99, imageURL: "dhokla", calories: 200, protein: 15, carbs: 100),
        
        Food(id: 3, name: "Buffalo Chicken Bites", description: "The tasty bites of chicken have just the right amount of kick to them.", price: 13.99, imageURL: "buffalo-chicken-bites", calories: 880, protein: 7, carbs: 0),

        Food(id: 17, name: "Paneer Biryani", description: "Soft Paneer with Spicy Biryani", price: 13.99, imageURL: "paneer-biryani", calories: 1200, protein: 45, carbs: 300),
        Food(id: 5, name: "Chicken Dumplings", description: "It's really hard to keep coming up with these descriptions.", price: 6.99, imageURL: "chicken-dumplings", calories: 240, protein: 9, carbs: 0),

        Food(id: 18, name: "Soya Chaap", description: "Smoky grilled soya chaap with tomato and yogurt gravy", price: 13.99, imageURL: "soya-chaap", calories: 1000, protein: 60, carbs: 400),
//        Food(id: 17, name: "Asian Flank Steak", description: "This perfectly thin cut just melts in your mouth.", price: 8.99, imageURL: "asian-flank-steak", calories: 300, protein: 25, carbs: 0),
//        Food(id: 1, name: "Asian Flank Steak", description: "This perfectly thin cut just melts in your mouth.", price: 8.99, imageURL: "asian-flank-steak", calories: 300, protein: 25, carbs: 0),
//        Food(id: 2, name: "Blackened Shrimp", description: "Seasoned shrimp from the depths of the Atlantic Ocean.", price: 12.99, imageURL: "blackened-shrimp", calories: 450, protein: 5, carbs: 0),
//        Food(id: 3, name: "Buffalo Chicken Bites", description: "The tasty bites of chicken have just the right amount of kick to them.", price: 13.99, imageURL: "buffalo-chicken-bites", calories: 880, protein: 7, carbs: 0),
        Food(id: 4, name: "Chicken Avocado Spring Roll", description: "These won't last 10 seconds once they hit the table.", price: 7.99, imageURL: "chicken-avocado-spring-roll", calories: 970, protein: 25, carbs: 0),
//        Food(id: 5, name: "Chicken Dumplings", description: "It's really hard to keep coming up with these descriptions.", price: 6.99, imageURL: "chicken-dumplings", calories: 240, protein: 9, carbs: 0),
//        Food(id: 6, name: "Chicken Fingers", description: "You can never go wrong with some good tenders.", price: 4.99, imageURL: "chicken-fingers", calories: 400, protein: 13, carbs: 543),
//        Food(id: 7, name: "Chicken Wings", description: "You'll need extra napkins with these tasty treats.", price: 5.99, imageURL: "chicken-wings", calories: 400, protein: 12, carbs: 0),
//        Food(id: 8, name: "Fried Cheese Ravioli", description: "I'm getting soooo hungry building this app...", price: 11.99, imageURL: "fried-cheese-ravioli", calories: 540, protein: 11, carbs: 0),
//        Food(id: 9, name: "Jumbo Tater Tots", description: "Scrumptious tots with a side of ranch.", price: 17.99, imageURL: "jumbo-tater-tot", calories: 400, protein: 8, carbs: 0),
//        Food(id: 10, name: "Meatballs", description: "It's a spiiiiicy meat-a-ball!", price: 12.99, imageURL: "meatballs", calories: 432, protein: 25, carbs: 0),
//        Food(id: 11, name: "Mozzarella Sticks", description: "The best appetizer there is.\nDon't @ me.", price: 4.99, imageURL: "mozzarella-sticks", calories: 980, protein: 4, carbs: 0),
//        Food(id: 12, name: "Philly Cheesesteak Sliders", description: "These look incredible. That's it. That's the description.", price: 9.99, imageURL: "philly-cheesesteak-sliders", calories: 432, protein: 11, carbs: 0),
//        Food(id: 13, name: "Rainbow Spring Rolls", description: "How did these even make the menu???", price: 6.99, imageURL: "rainbow-spring-rolls", calories: 940, protein: 9, carbs: 0),
//        Food(id: 14, name: "Stuffed Shells", description: "I'm getting hungrier just looking at these.", price: 11.99, imageURL: "stuff-shells", calories: 720, protein: 2, carbs: 0),
        
    ]
}
