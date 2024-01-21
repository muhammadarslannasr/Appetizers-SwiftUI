//
//  Appetizer.swift
//  Appetizers
//
//  Created by Muhammad Arslan Nasr on 13/01/2024.
//

import Foundation

struct Appetizer : Decodable, Identifiable{
    let id: Int
    let name: String
    let description: String
    let imageURL: String
    let price: Double
    let calories: Int
    let protein: Int
    let carbs: Int
}

struct AppetizerResponse: Decodable{
    let request: [Appetizer]
}

class MockData{
    static let sampleAppetizer = Appetizer(id: 0001, name: "Test Appetizer", description: "This is the description of my appetizer, and its yummy",
                                           imageURL: "", price: 9.99, calories: 99, protein: 99, carbs: 99)
    
    static let appetizers = [sampleAppetizer, sampleAppetizer, sampleAppetizer, sampleAppetizer]
}
