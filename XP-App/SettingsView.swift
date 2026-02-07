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
                        .padding()
                    Spacer()
                    .background {
                        Rectangle()
                            .fill(Color.gray)
                            .cornerRadius(12)
                    }
                    
                
                }
            
            .navigationTitle(Text("Settings"))
        }
        
        
    }
}
