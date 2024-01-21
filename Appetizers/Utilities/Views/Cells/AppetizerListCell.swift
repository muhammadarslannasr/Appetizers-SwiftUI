//
//  AppetizerListCell.swift
//  Appetizers
//
//  Created by Muhammad Arslan Nasr on 13/01/2024.
//

import SwiftUI

struct AppetizerListCell: View {
    
    let appetizer: Appetizer
    
    var body: some View {
        
        
        
        HStack{
            AppetizerRemoteImage(urlString: appetizer.imageURL)
                .aspectRatio(contentMode: .fit)
                .frame(width: 120, height: 90)
                .cornerRadius(8.0)
            
            VStack(alignment: .leading,spacing: 5){
                Text(appetizer.name)
                    .font(.title2)
                    .fontWeight(.medium)
            
                Text("$\(appetizer.price, specifier: "%.2f")")
                    .foregroundColor(.secondary)
                    .fontWeight(.semibold)
            }
            .padding()
        }
    }
}

#Preview {
    AppetizerListCell(appetizer: MockData.sampleAppetizer)
}
