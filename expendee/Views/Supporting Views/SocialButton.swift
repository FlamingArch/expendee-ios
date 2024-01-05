//
//  SocialButton.swift
//  expendee
//
//  Created by Harsh Chaturvedi on 05/01/24.
//

import SwiftUI

struct SocialButton: View {
    var social: String
    var tint: Color
    var containerSize: CGSize
    var onClick: () -> Void
    
    var body: some View {
        Button {} label: {
            Image(social)
                .frame(
                    width: ((containerSize.width - 48) / 4) - 16,
                    height: ((containerSize.width - 48) / 4) - 16)
                .themedButtonImageSocial()
        }.tint(tint)

    }
}

#Preview {
    SocialButton(social: "Apple", tint: .black, containerSize: CGSize(width: 200, height: 300)) {
        
    }
}
