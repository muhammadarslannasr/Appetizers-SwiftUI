//
//  OrderView.swift
//  Appetizers
//
//  Created by Muhammad Arslan Nasr on 13/01/2024.
//

import SwiftUI

struct OrderView: View {
    @State private var orderItems = MockData.orderItems
    var body: some View {
        NavigationView{
            VStack{
                List{
                    ForEach(orderItems){ appetizer in
                        AppetizerListCell(appetizer: appetizer)
                    }
                    .onDelete(perform: deleteItems)
                }
                .listStyle(PlainListStyle())
                
                Button{
                    print("order placed")
                }label: {
                    APButton(title: "$99.99 - Place Order")
                }
                .padding(.bottom, 25)
            }
                .navigationTitle("🧾 Orders")
        }
    }
    
    func deleteItems(at offsets: IndexSet){
        orderItems.remove(atOffsets: offsets)
    }
}

#Preview {
    OrderView()
}
