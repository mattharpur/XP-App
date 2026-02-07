//
//  SettingsView.swift
//  XP-App
//
//  Created by Matt Harpur on 2/7/26.
//

import SwiftUI

struct SettingsView: View {
    @Binding var isDarkMode: Bool 
    
    var body: some View {
        NavigationView {
            VStack {
                
                Toggle("Dark Mode", isOn: $isDarkMode)
                    .onChange(of: isDarkMode) {
                        UserDefaults.standard.set(isDarkMode, forKey: "isDarkMode")
                    }
                    .padding(.horizontal)
                    .padding(10)
                    }
            
            Button(action: {
                print("tapped")
            }) {
                Text("Clear List")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.red)
                    .cornerRadius(10)
                    
            }
            
            
            
            .padding(100)
            .navigationTitle(Text("Profile"))
        }
            
            .navigationTitle(Text("Settings"))
            
            
                
                }
            
            
        }
        
        
    

