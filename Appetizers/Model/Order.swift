//
//  Order.swift
//  Appetizers
//
//  Created by Aaqib Raza on 23/01/2024.
//

import SwiftUI

final class Order: ObservableObject{
    @Published var items: [Appetizer] = []
    
    func add(_ appetizer: Appetizer){
        items.append(appetizer)
    }
    
    var totalPrice: Double {
        items.reduce(0) {$0 + $1.price}
    }
    
    func deleteItems(at offsets: IndexSet){
       items.remove(atOffsets: offsets)
    }
}
