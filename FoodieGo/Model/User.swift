//
//  User.swift
//  FoodieGo
//
//  Created by Sanket Shah on 5/13/24.
//

import Foundation

struct User: Codable {
    var firstName       = ""
    var lastName        = ""
    var email           = ""
    var birthdate       = Date()
    var extraNapkins    = false
    var frequentRefills = false
}
