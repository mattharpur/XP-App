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
    private var percentage: Double { return progress * 100.0 }
    
    
    var body: some View {
        
        NavigationView {
            ZStack {
                
                LinearGradient(
                           colors: [
                               Color(red: 0.78, green: 0.70, blue: 0.95),
                               Color(red: 0.70, green: 0.85, blue: 0.98)
                           ],
                           startPoint: .top,
                           endPoint: .bottom
                       )
                       .ignoresSafeArea()
                
                VStack {
                    
                    Text("Here is your progress based on your to-hack list:").bold(true)
                        .padding(20)
                    Text("\(Int(percentage))% Complete")
                        .font(.largeTitle)
                        .bold(true)
                        .foregroundStyle(Color.purple)
                        .padding(20)
                    CircularProgressView(progress: progress)
                        .padding(20)
                }
            }
            
            }
            
           
            
        }
        
   
    }

