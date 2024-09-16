//
//  SignUp.swift
//  expendee
//
//  Created by Harsh Chaturvedi on 16/09/24.
//

import SwiftUI

struct SignUp: View {
    @State private var username: String = ""
    @State private var password: String = ""
    @State private var repeatPassword: String = ""
    
    var body: some View {
        ZStack {
            Color.scaffold.ignoresSafeArea()
            VStack(spacing: 24) {
                Text("Sign Up")
                    .font(.system(size: 32))
                Text("Create your Expendee ID").modifier(ThemedCaptionText())
                
                TextField("Username", text: $username).modifier(ThemedTextField())
                SecureField("Password", text: $password).modifier(ThemedTextField())
                SecureField("Repeat Password", text: $password).modifier(ThemedTextField())
                
                Button { } label: {
                    Text("Continue").frame(maxWidth: .infinity)
                }.modifier(ThemedPrimaryButton())
                
                SocialSignIn()
                
            }
            .padding(24)
        }
    }
}

#Preview {
    SignUp()
}
