//
//  ContentView.swift
//  XP-App
//
//  Created by Matt Harpur on 2/6/26.
//

import SwiftUI

struct ContentView: View {
    
                              
    @State private var isDarkMode =
        UserDefaults.standard.bool(forKey: "isDarkMode")
    @StateObject private var todoStore = TodoStore()
    @State private var selectedTab: Int = 0
    
    var body: some View {
        TabView {
            
            HomeView()
                .environmentObject(todoStore)
                .tabItem {
                    Label("Progress", systemImage: "percent")
                }
                .tag(0)
            
            TodoView()
                .environmentObject(todoStore)
                .tabItem {
                    Label("To-Hack List", systemImage: "curlybraces")
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
        .preferredColorScheme(isDarkMode ? .dark : .light)
    }
    
    
}




#Preview {
    ContentView()
}


