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
    @State private var wrongEmail = 0
    @State private var wrongPassword = 0
    @State private var showingLoginScreen = false
    @State private var path = [String]()
    
    var body: some View {
        NavigationStack (path: $path) {
            ZStack {
                Color.init(red: 0.992, green: 0.992, blue: 0.953)
                    .ignoresSafeArea()
                
                VStack {
                    Text("Login with email")
                        .font(Font.custom("PTSans-Regular", size: 24))
                    
                    TextField("Email", text: $email)
                                            .font(Font.custom("PTSans-Regular", size: 16))
//                                            .foregroundColor(.black)
                                            .padding()
                                            .frame(width: 320, height: 50)
                                            .background(Color.black.opacity(0.1))
                                            .cornerRadius(10)
                                            .border(.red, width: CGFloat(wrongEmail))
                                        
                    SecureField("Password", text: $password)
                        .font(Font.custom("PTSans-Regular", size: 16))
                        .padding()
                        .frame(width: 320, height: 50)
                        .background(Color.black.opacity(0.1))
                        .cornerRadius(10)
                        .border(.red, width: CGFloat(wrongPassword))
                    
                    Button("Login") {
                            authenticateUser(email: email, password: password)
                            }
                        .font(Font.custom("PTSans-Regular", size: 16))
                        .foregroundColor(.white)
                        .frame(width: 320, height: 50)
                        .background(Color.black)
                        .cornerRadius(10)
                        
                    
//                    NavigationLink(value: showingLoginScreen)
                }
                .navigationDestination(for: String.self) { string in
                    if showingLoginScreen {
                        ContentView()
                    }
                }
            }//.navigationBarHidden(true)
        }
    }
    
    func authenticateUser(email: String, password: String) {
            if email.lowercased() == "CuriousR" {
                wrongEmail = 0
                if password.lowercased() == "abc123" {
                    wrongPassword = 0
                    showingLoginScreen = true
                } else {
                    wrongPassword = 1
                }
            } else {
                wrongEmail = 1
            }
        }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
