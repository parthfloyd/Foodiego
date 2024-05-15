//
//  FoodTabView.swift
//  FoodieGo
//
//  Created by Sanket Shah on 5/13/24.
//

import SwiftUI

struct FoodTabView: View {
    var body: some View {
        TabView {
            DineInView()
                .tabItem {
                    Image(systemName: "fork.knife")
                    Text("Dine In")
                }
            FoodListView()
                .tabItem {
                    Image(systemName: "takeoutbag.and.cup.and.straw")
                    Text("Takeout")
                }
            OrderView()
                .tabItem {
                    Image(systemName: "bag")
                    Text("Order")
                }
            AccountView()
                .tabItem {
                    Image(systemName: "person")
                    Text("Account")
                }
            
        }
        .accentColor(Color("brandPrimary"))
    }
}

struct FoodTabView_Previews: PreviewProvider {
    static var previews: some View {
        FoodTabView()
    }
}
