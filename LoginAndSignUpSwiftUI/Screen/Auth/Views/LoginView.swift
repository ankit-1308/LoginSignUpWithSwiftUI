//
//  LoginView.swift
//  LoginAndSignUpSwiftUI
//
//  Created by Ankit Maurya  on 29/03/25.
//

import SwiftUI

struct LoginView: View {
    
    @State private var email: String = ""
    @State private var password: String = ""
    
    
    var body: some View {
        
        ScrollView {
            
            VStack(spacing: 16) {
                // logo
                
                Image("login_image")
                    .resizable()
                    .scaledToFit()
                
                // title
                
                Text("Let's Connect with US!")
                    .fontWeight(.bold)
                    .font(.title2)
                
                // Text fields
                
                Spacer().frame(height: 10)
                
                
                InputView(placeholder: "Email or Phone Number", text: $email)
                
                InputView(placeholder: "Password", isSecureField: true, text: $password)
                
               
                
                // Forget button
                
                HStack {
                    Spacer()
                    Button {
                        
                    } label: {
                        Text("Forget Password?")
                            .foregroundStyle(.gray)
                            .fontWeight(.medium)
                            .font(.subheadline)
                    }
                }
                
                // Login View
                
                Button {
                    
                } label: {
                    Text("Login")
                }
                .buttonStyle(CapsuleButtonStyle())
                
                // botton view or
                
                HStack(spacing: 16) {
                    line
                    
                    Text("or")
                        .fontWeight(.semibold)
                        
                    line
                }
                .foregroundStyle(.gray)
                

                
                // signUp with apple
                
                
                Button {
                    
                } label: {
                    Label("sign up with Apple", systemImage: "apple.logo")
                }
                .buttonStyle(CapsuleButtonStyle(bgColor: .black))

                // signUp with google
                
                Button {
                    
                } label: {
                    HStack {
                        Image("google")
                            .resizable()
                            .frame(width: 15, height: 15)
                        Text("Sign up with Google")
                    }
                }
                .buttonStyle(
                    CapsuleButtonStyle(
                        bgColor: .clear,
                        textColor: .black,
                        hasBorder: true
                    )
                )
               
                // footer
                
            }
            
        }
        .ignoresSafeArea()
        .padding(.horizontal)
        .padding(.vertical, 8)
        
    }
    
    private var line: some View {
        VStack() { Divider().frame(height: 1)}
    }
}

#Preview {
    LoginView()
}

struct CapsuleButtonStyle: ButtonStyle {
    var bgColor: Color = .teal
    var textColor: Color = .white
    var hasBorder: Bool = false
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .foregroundColor(textColor)
            .padding()
            .frame(maxWidth: .infinity)
            .background(Capsule().fill(bgColor))
            .scaleEffect(configuration.isPressed ? 0.95 : 1.0)
            .overlay {
                hasBorder ?
                Capsule().stroke(.gray, lineWidth: 1) : nil
            }
    }
}
