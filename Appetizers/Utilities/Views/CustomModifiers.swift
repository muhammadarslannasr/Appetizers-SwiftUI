//
//  CustomModifiers.swift
//  Appetizers
//
//  Created by Aaqib Raza on 25/01/2024.
//

import SwiftUI

struct StandardButtonStyle: ViewModifier{
    
    func body(content: Content) -> some View {
        content
            .buttonStyle(.bordered)
            .tint(.brandPrimary)
            .controlSize(.large)
    }
    
}
