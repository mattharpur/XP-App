//
//  HomeView.swift
//  XP-App
//
//  Created by Matt Harpur on 2/7/26.
//

import SwiftUI



struct HomeView: View {
    
    @State private var progress: Double = 0.0
    
    var body: some View {
        
        NavigationView {
            
            VStack {
                
                CircularProgressView(progress: progress)
                
            }
        
            .navigationTitle(Text("Hey Hacker!"))
            
        }
        
        
    }
}
