//
//  SignIn.swift
//  expendee
//
//  Created by Harsh Chaturvedi on 06/10/23.
//

import SwiftUI

struct PageSignIn: View {
    @State private var username = "";
    @State private var password = "";
    
    var body: some View {
        GeometryReader { container in
            ScrollView {
                VStack(spacing: 24) {
                    Spacer()
                    Text("Expendee").themedTextBranding()
                    
                    Text("Sign In With Your Expendee ID").themedTextSectionHeader()
                    TextField("Username", text: $username).themedInput()
                    #if(os(iOS))
                        .keyboardType(.emailAddress)
                    #endif
                    SecureField("Password", text: $password).themedInput()
                    Button("Sign In") {}
                        .frame(maxWidth: .infinity)
                        .themedButtonPrimary()
                    
                    Text("Or Continue Via").themedTextSectionHeader()
                    HStack(spacing: 16) {
                        SocialButton(social: "Apple", tint: .black, containerSize: container.size) { }
                        SocialButton(social: "Google", tint: .blue, containerSize: container.size) { }
                        SocialButton(social: "Microsoft", tint: .cyan, containerSize: container.size) { }
                        SocialButton(social: "Apple", tint: .blue, containerSize: container.size) { }
                    }
                    
                    Text("Don't Have An Account?").themedTextSectionHeader()
                    Button("Sign Up") {}
                        .frame(maxWidth: .infinity)
                        .themedButtonSecondary()
                    
                    Spacer()
                }
                .frame(minHeight: container.size.height - 50)
                .padding(24)
            }
            .frame(maxWidth: .infinity)
            .background(Color.scaffold)
        }
    }
}

#Preview {
    PageSignIn()
}
