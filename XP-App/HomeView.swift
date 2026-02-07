//
//  HomeView.swift
//  XP-App
//
//  Created by Matt Harpur on 2/7/26.
//

import SwiftUI



struct HomeView: View {
    
    
    //progress circle
    
    
    @EnvironmentObject var todoStore: TodoStore
    
    private var progress: Double {
        
        let total = todoStore.todos.count
        if total == 0 {return 0.0}
        
        let completed = todoStore.todos.filter{$0.isCompleted}.count
        return Double(completed) / Double(total)
        
        
    }
    
    
    
    var body: some View {
        
        NavigationView {
            
            VStack {
                Text("Your Progress")
                    .padding(20)
                CircularProgressView(progress: progress)
                    .padding()
                
            }
            
            .navigationTitle(Text("Hey Hacker!"))
            
        }
        
        
    }
}
