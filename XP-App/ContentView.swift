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
            
            ToDoView()
                .tabItem {
                    Label("To Do", systemImage: "list.bullet")
                }
            
            SettingsView()
                .tabItem {
                    Label("Settings", systemImage: "gear")
                }
           
            ProfileView()
                .tabItem {
                    Label("Profile", systemImage: "person")
                }
            
        }
    }
    
    
}




#Preview {
    ContentView()
}


