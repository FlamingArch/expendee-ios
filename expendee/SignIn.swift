//
//  SignIn.swift
//  expendee
//
//  Created by Harsh Chaturvedi on 06/10/23.
//

import SwiftUI

struct PageSignIn: View {
    @State var username = ""
    @State var password = ""
    
    func getBrandColor(brand: String) -> Color {
        switch brand {
        case "microsoft":
            Color.blue
        case "apple":
            Color.black
        case "google":
            Color.accentColor
        default:
            Color.accentColor
        }
    }
    
    var body: some View {
        GeometryReader { geo in
            ScrollView {
                VStack(spacing: 24) {
                    Spacer()
                    Text("Expendee")
                        .textCase(.uppercase)
                        .font(.system(size: 32, weight: .black, design: .serif))
                    
                    Text("Sign In with your Expendee ID")
                        .bold()
                        .opacity(0.6)
                    
                    TextField("Username", text: $username)
                        .padding(16)
                        .background(
                            RoundedRectangle(cornerRadius: 16)
                                .foregroundColor(.white)
                        )
                    
                    TextField("Password", text: $password)
                        .padding(16)
                        .background(
                            RoundedRectangle(cornerRadius: 16)
                                .foregroundColor(.white)
                        )
                    
                    Button {
                        
                    } label: {
                        Text("Sign Up")
                            .frame(maxWidth: .infinity)
                            .padding(16)
                            .bold()
                            .foregroundStyle(.white)
                    }
                    .background(
                        RoundedRectangle(cornerRadius: 16)
                            .foregroundColor(.accentColor)
                    )
                    .disabled(username.count < 6 && password.isEmpty)
                    
                    Text("Or Continue With")
                        .bold()
                        .opacity(0.6)
                    
                    HStack() {
                        ForEach(["apple", "google", "microsoft"], id: \.self) { provider in
                            Button {
                                
                            } label: {
                                Image(provider)
                                    .padding(40)
                                    .bold()
                                    .foregroundStyle(.white)
                            }
                            .background(
                                RoundedRectangle(cornerRadius: 16)
                                    .foregroundColor(getBrandColor(brand: provider))
                            )
                            .aspectRatio(1.0, contentMode: .fit)
                            
                            if provider != "microsoft" { Spacer() }
                        }
                    }
                    
                    
                    
                    Text("Don't have an account?")
                        .bold()
                        .opacity(0.6)
                    
                    Button {
                        
                    } label: {
                        Text("Sign Up")
                            .frame(maxWidth: .infinity)
                            .padding(16)
                            .bold()
                            .foregroundStyle(Color.accentColor)
                    }
                    .background(
                        RoundedRectangle(cornerRadius: 16)
                            .foregroundColor(.accentColor)
                            .opacity(0.2)
                    )
                    Spacer()
                }
                .padding(24)
                .frame(minHeight: geo.size.height)
            }
            .background(Color("background"))
        }
    }
}

#Preview {
    PageSignIn()
}
