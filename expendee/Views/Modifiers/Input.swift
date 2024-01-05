//
//  Input.swift
//  expendee
//
//  Created by Harsh Chaturvedi on 05/01/24.
//

import SwiftUI

struct ThemedInput: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding()
            .background(RoundedRectangle(cornerRadius: 12).foregroundStyle(.white))
    }
}

extension View {
    func themedInput() -> some View {
        self.modifier(ThemedInput())
    }
}
