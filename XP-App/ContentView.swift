//
//  ContentView.swift
//  XP-App
//
//  Created by Matt Harpur on 2/6/26.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject private var todoStore = TodoStore()
    
    var body: some View {
        TabView {
            
            HomeView()
                .environmentObject(todoStore)
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            
            TodoView()
                .environmentObject(todoStore)
                .tabItem {
                    Label("To Do", systemImage: "list.bullet")
                }
            
            SettingsView()
                .tabItem {
                    Label("Settings", systemImage: "gear")
                }
           
            ProfileView()
                .environmentObject(todoStore)
                .tabItem {
                    Label("Profile", systemImage: "person")
                }
            
        }
    }
    
    
}




#Preview {
    ContentView()
}


