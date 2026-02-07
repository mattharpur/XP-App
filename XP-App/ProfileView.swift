//
//  SettingsView.swift
//  XP-App
//
//  Created by Matt Harpur on 2/7/26.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                Image("bytehacks11")
                    .resizable().frame(width: 250, height: 250)
                Button(action: {
                    print("tapped")
                }) {
                    Text("Login/Sign Up")
                        .font(.headline)
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.purple)
                        .cornerRadius(10)
                }
                
                
                
                .padding(100)
                .navigationTitle(Text("Profile"))
            }
            .background(
                        LinearGradient(
                            colors: [
                                Color(red: 0.78, green: 0.70, blue: 0.95), // light purple
                                Color(red: 0.70, green: 0.85, blue: 0.98)  // light blue
                            ],
                            startPoint: .top,
                            endPoint: .bottom
                        )
                    )
        }
    }
}
