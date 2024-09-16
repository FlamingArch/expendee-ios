//
//  SignUp.swift
//  expendee
//
//  Created by Harsh Chaturvedi on 16/09/24.
//

import SwiftUI

struct SignUp: View {
    @Environment(\.dismiss) var dismiss
    @State private var username: String = ""
    @State private var password: String = ""
    @State private var repeatPassword: String = ""
    
    var body: some View {
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
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .padding(24)
        .background(Color.scaffold.ignoresSafeArea())
        .overlay(alignment: .topLeading) {
            HStack {
                Button{
                    dismiss()
                } label: {
                    HStack {
                        Image(systemName: "chevron.backward")
                        Text("Sign In").fontWeight(.bold).font(.custom("Manrope", size: 16))
                    }.padding(8)
                }
            }
            .padding(24)
            .navigationBarBackButtonHidden()
        }
    }
}

#Preview {
    SignUp()
}
