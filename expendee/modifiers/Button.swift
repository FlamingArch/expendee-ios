//
//  Button.swift
//  expendee
//
//  Created by Harsh Chaturvedi on 16/09/24.
//

import SwiftUI

struct ThemedPrimaryButton: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding(16)
            .foregroundStyle(Color.white)
            .background(RoundedRectangle(cornerRadius: 16).foregroundStyle(Color.accentColor))
    }
}

struct ThemedSecondaryButton: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding(16)
            .foregroundStyle(Color.accentColor)
            .background(RoundedRectangle(cornerRadius: 16).foregroundStyle(Color.accentColor.opacity(0.2)))
    }
}
