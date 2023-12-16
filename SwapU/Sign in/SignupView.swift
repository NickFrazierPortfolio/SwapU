//
//  signup.swift
//  SwapU
//
//  Created by Nick Frazier on 12/15/23.
//

import SwiftUI

struct SignupView: View {
    @State private var email: String = ""
    @State private var uni: String = ""
    @State private var password: String = ""
    @State private var university: String = ""
    @State private var universities = ["Your University", "University B", "University C"]
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

            Text("SIGN UP")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(.bottom, 20)
            
            Text("Sign up with your student email")
                .foregroundColor(.gray)
                .padding(.bottom, 5)
            
            TextField("student.edu", text: $email)
                .padding()
                .background(Color.gray.opacity(0.1))
                .cornerRadius(8)
                .foregroundColor(Color.black)
                .accentColor(Color.black)
                .padding(.bottom, 20)
            
            TextField("University", text: $uni)
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
            

            Button("SIGN UP") {
                // Perform signup
            }
            .foregroundColor(.white)
            .padding()
            .frame(maxWidth: .infinity)
            .background(Color.black)
            .cornerRadius(40)
            .padding(.horizontal, 20)

            Spacer()
        }
        .background(Color.white)
        .cornerRadius(10)
        .padding()
    }
}
