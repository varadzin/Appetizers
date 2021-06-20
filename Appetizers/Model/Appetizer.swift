//
//  Appetizer.swift
//  Appetizers
//
//  Created by Frantisek Varadzin on 23/05/2021.
//

import Foundation

struct Appetizer: Decodable, Identifiable {
    let id: Int
    let name: String
    let description: String
    let price: Double
    let calories: Int
    let protein: Int
    let imageURL: String
    let carbs: Int
}

struct AppetizerResponse: Decodable {
    let request: [Appetizer]
}

struct MockData {
    static let sampleAppetizer = Appetizer(id: 0001,
                                           name: "Meat with pommes",
                                           description: "Meet and chips",
                                           price: 9.99,
                                           calories: 99,
                                           protein: 88,
                                           imageURL: "",
                                           carbs: 99)


static let appetizers  = [sampleAppetizer, sampleAppetizer, sampleAppetizer]
    
    static let orderItemOne = Appetizer(id: 0001,
                                           name: "Meat One with pommes",
                                           description: "Meet and chips",
                                           price: 9.99,
                                           calories: 99,
                                           protein: 88,
                                           imageURL: "",
                                           carbs: 99)
    
    static let orderItemTwo = Appetizer(id: 0002,
                                           name: "Meat Two with pommes",
                                           description: "Meet and chips",
                                           price: 9.99,
                                           calories: 99,
                                           protein: 88,
                                           imageURL: "",
                                           carbs: 99)
    
    static let orderItemThree = Appetizer(id: 0003,
                                           name: "Meat Three with pommes",
                                           description: "Meet and chips",
                                           price: 9.99,
                                           calories: 99,
                                           protein: 88,
                                           imageURL: "",
                                           carbs: 99)
    
    
    static let orderItems = [orderItemOne, orderItemTwo, orderItemThree]
    
    
}
