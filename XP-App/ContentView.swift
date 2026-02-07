//
//  ContentView.swift
//  XP-App
//
//  Created by Matt Harpur on 2/6/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            SettingsView()
                .tabItem {
                    Label("Settings", systemImage: "gear")
                }
            
        }
    }
    
    
}


struct SettingsView: View {
    var body: some View {
        NavigationView {
            VStack {
                
            }
            .navigationTitle(Text("Settings"))
        }
        
        
    }
}

struct HomeView: View {
    var body: some View {
        
        NavigationView {
            
            VStack {
                
            }
            
        
            .navigationTitle(Text("Home"))
            
            
        }
        
        
        
    }
}

#Preview {
    ContentView()
}


