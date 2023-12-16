//
//  login.swift
//  SwapU
//
//  Created by Nick Frazier on 12/15/23.
//

import SwiftUI

struct LoginView: View {
    @State private var email: String = ""
    @State private var password: String = ""
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        VStack {
            HStack {
                Button(action: {
                    presentationMode.wrappedValue.dismiss()
                    }) {
                    Image(systemName: "chevron.left")
                                    .foregroundColor(.black)
                                    .padding()
                                    .background(Color.white)
                                    .cornerRadius(8)
                                    
                            }
                            Spacer()
                        }
                        .padding(.horizontal)
            
            Image("Logo1")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding()

            Text("LOGIN")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(.bottom, 20)

            TextField("university.edu", text: $email)
                .padding()
                .background(Color.gray.opacity(0.1))
                .cornerRadius(8)
                .foregroundColor(Color.black)
                .accentColor(Color.black)
                .padding(.bottom, 20)

            SecureField("Password", text: $password)
                .padding()
                .background(Color.gray.opacity(0.1))
                .cornerRadius(8)
                .foregroundColor(Color.black)
                .padding(.bottom, 10)

            Button("Forgot Password?") {
                // Forgot password action
            }
            .foregroundColor(.black)
            .padding(.bottom, 20)

            Button(action: {
                // Handle login action
            }) {
                Text("LOGIN")
                    .foregroundColor(.white)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.black)
                    .cornerRadius(40)
                    .padding(.horizontal, 20)
                    .shadow(radius: 5)
            }
            Spacer()

            NavigationLink(destination: SignupView().navigationBarBackButtonHidden(true)) {
                Text("Don't have an account? SIGN UP")
            }
            .foregroundColor(.black)
            .padding()
        }
        .background(Color.white)
        .cornerRadius(10)
        .padding()
    }
}
