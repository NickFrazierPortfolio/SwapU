//
//  welcomeView.swift
//  SwapU
//
//  Created by Nick Frazier on 12/15/23.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        ZStack {
            Image("bgchick")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .edgesIgnoringSafeArea(.all)
            Color.black
                .opacity(0.7)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Spacer()

                Text("Welcome")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                    .foregroundColor(Color.white)
                
                Text("Buying and selling among trusted fellow students.")
                    .foregroundColor(Color.white)
                    .padding(.top, 5)

                Spacer()

                NavigationLink(destination: LoginView().navigationBarBackButtonHidden(true)) {
                    Text("LOGIN NOW")
                        .font(.headline)
                        .foregroundColor(Color.black)
                        .padding()
                        .frame(width: 280, height: 50)
                        .background(Color.white)
                        .cornerRadius(40)
                }
                .padding(.bottom, 10)

                NavigationLink(destination: SignupView().navigationBarBackButtonHidden(true)) {
                    Text("SIGN UP")
                        .font(.headline)
                        .foregroundColor(Color.white)
                        .padding()
                        .frame(width: 280, height: 50)
                        .overlay(
                            RoundedRectangle(cornerRadius: 40)
                                .stroke(Color.white, lineWidth: 2)
                        )
                }

                Spacer()
            }
        }
    }
}



