//
//  ContentView.swift
//  XP-App
//
//  Created by Matt Harpur on 2/6/26.
//

import SwiftUI

struct ContentView: View {
    
    
    @State private var isDarkMode: Bool = false
    @StateObject private var todoStore = TodoStore()
    @State private var selectedTab: Int = 0
    
    var body: some View {
        TabView {
            
            HomeView()
                .environmentObject(todoStore)
                .tabItem {
                    Label("Home", systemImage: "house")
                }
                .tag(0)
            
            TodoView()
                .environmentObject(todoStore)
                .tabItem {
                    Label("To Do", systemImage: "list.bullet")
                }
                .tag(1)
            
            SettingsView(isDarkMode: $isDarkMode)
                .tabItem {
                    Label("Settings", systemImage: "gear")
                }
                .tag(2)
           
            ProfileView()
                .environmentObject(todoStore)
                .tabItem {
                    Label("Profile", systemImage: "person")
                }
                .tag(3)
            
        }
        .preferredColorScheme(isDarkMode ? .light : .dark)
    }
    
    
}




#Preview {
    ContentView()
}


