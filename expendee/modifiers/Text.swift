//
//  Text.swift
//  expendee
//
//  Created by Harsh Chaturvedi on 16/09/24.
//

import SwiftUI

struct ThemedCaptionText: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.custom("Manrope", size: 16))
            .fontWeight(.bold)
            .opacity(0.6)
    }
}

