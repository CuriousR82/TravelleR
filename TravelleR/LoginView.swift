//
//  LoginView.swift
//  TravelleR
//
//  Created by Rosa Jeon on 2023-06-05.
//

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    
    @State private var authStatus = 4
    @State private var isAuthenticated = false
    @State private var showingLoginScreen = false
    @State private var path = [String]()
    
    var body: some View {
        ZStack {
            Color
                .init(red: 0.992, green: 0.992, blue: 0.953)
                .ignoresSafeArea()
            
            NavigationView {
                VStack {
                    Text("Login with email")
                        .font(Font.custom("PTSans-Regular", size: 24))
                    
                    TextField("Email", text: $email)
                        .font(Font.custom("PTSans-Regular", size: 16))
                        .padding()
                        .frame(width: 320, height: 50)
                        .background(Color.black.opacity(0.1))
                        .cornerRadius(10)
                        .border(authStatus == 1 ? Color.red : Color.clear, width: authStatus == 1 ? 1.0 : 0.0)
                    
                    SecureField("Password", text: $password)
                        .font(Font.custom("PTSans-Regular", size: 16))
                        .padding()
                        .frame(width: 320, height: 50)
                        .background(Color.black.opacity(0.1))
                        .cornerRadius(10)
                        .border(authStatus == 2 ? Color.red : Color.clear, width: authStatus == 2 ? 1.0 : 0.0)

                    
                    Button("Login") {
                        authenticateUser(email: email, password: password)
                    }
                    .font(Font.custom("PTSans-Regular", size: 16))
                    .foregroundColor(.white)
                    .frame(width: 320, height: 50)
                    .background(Color.black)
                    .cornerRadius(10)
                    
                }
                .fullScreenCover(isPresented: $isAuthenticated, content: {
                    ContentView()
                })
            }
        }
    }
    
    private func authenticateUser(email: String, password: String) {
        let authenticationResult = performAuthentication(email: email, password: password)
        
        if authenticationResult == 0 {
            isAuthenticated = true
        }
    }
    
    private func performAuthentication(email: String, password: String) -> Int {
        if email.lowercased() == "curiousr" {
            if password.lowercased() == "abc123" {
                authStatus = 0 // Success
                showingLoginScreen = true
                return 0
            }
            authStatus = 2 // Wrong Password
        } else { authStatus = 1 } // Wrong Email
        return 1
    }
    
}


struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
