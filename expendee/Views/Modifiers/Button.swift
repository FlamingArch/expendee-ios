//
//  Button.swift
//  expendee
//
//  Created by Harsh Chaturvedi on 05/01/24.
//

import SwiftUI

struct ButtonPrimary: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding()
            .background(RoundedRectangle(cornerRadius: 12).foregroundStyle(Color.accentColor))
            .foregroundStyle(Color.white)
            .fontWeight(.bold)
    }
}

struct ButtonSecondary: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding()
            .background(RoundedRectangle(cornerRadius: 12).foregroundStyle(Color.accentColor.opacity(0.2)))
            .foregroundStyle(Color.accentColor)
            .fontWeight(.bold)
    }
}

struct ButtonImageSocial: ViewModifier {
    func body(content: Content) -> some View {
        content
            .foregroundStyle(.white)
            .background(RoundedRectangle(cornerRadius: 12))
    }
}

extension View {
    func themedButtonPrimary() -> some View {
        self.modifier(ButtonPrimary())
    }
    
    func themedButtonSecondary() -> some View {
        self.modifier(ButtonSecondary())
    }
    
    func themedButtonImageSocial() -> some View {
        self.modifier(ButtonImageSocial())
    }
}
