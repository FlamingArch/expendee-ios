//
//  Text.swift
//  expendee
//
//  Created by Harsh Chaturvedi on 05/01/24.
//

import SwiftUI

struct BrandingText: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.system(.largeTitle, design: .serif))
            .fontWeight(.black)
            .textCase(.uppercase)
    }
}

struct SectionHeaderText: ViewModifier {
    func body(content: Content) -> some View {
        content
            .fontWeight(.bold)
            .opacity(0.6)
    }
}

extension View {
    func themedTextBranding() -> some View {
        self.modifier(BrandingText())
    }
    
    
    func themedTextSectionHeader() -> some View {
        self.modifier(SectionHeaderText())
    }
}
