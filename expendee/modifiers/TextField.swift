//
//  TextField.swift
//  expendee
//
//  Created by Harsh Chaturvedi on 16/09/24.
//

import SwiftUI

struct ThemedTextField: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.custom("Manrope", size: 16))
            .padding(16)
            .background(RoundedRectangle(cornerRadius: 16.0).foregroundColor(Color.card))
    }
}

