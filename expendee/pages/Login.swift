//
//  ContentView.swift
//  expendee
//
//  Created by Harsh Chaturvedi on 15/09/24.
//

import SwiftUI

struct PageLogin: View {
    @State private var username: String = ""
    @State private var password: String = ""
    var body: some View {
        ZStack {
            Color.scaffold.ignoresSafeArea()
            VStack(spacing: 24) {
                Text(K.appName)
                    .textCase(.uppercase)
                    .font(.custom("Playfair Display", size: 28))
                    .fontWeight(.black)
                Text("Sign in with your Expendee ID").opacity(0.8)
                
                TextField("Username", text: $username).modifier(ThemedTextField())
                SecureField("Password", text: $password).modifier(ThemedTextField())
                
                Button { } label: {
                    Text("Sign In").frame(maxWidth: .infinity)
                }.modifier(ThemedPrimaryButton())
                
                Text("Or Continue Via").opacity(0.8)
                
                Text("Don't Have an Account?").opacity(0.8)
                
                Button {} label: {
                    Text("Sign Up").frame(maxWidth: .infinity)
                }.modifier(ThemedSecondaryButton())
            }
            .padding(24)
        }
    }
}

#Preview {
    PageLogin()
}
