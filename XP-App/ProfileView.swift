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
                
                Button("Login") {
                    
                    print("tapped")
                    
                }
                .foregroundColor(.white)
                .padding()
                .background(Color.purple)
                .cornerRadius(12)
                
                
            }
            .navigationTitle(Text("Profile"))
        }
    }
}
