//
//  CircularProgressView.swift
//  XP-App
//
//  Created by Matt Harpur on 2/7/26.
//

import SwiftUI

struct CircularProgressView: View {
    
    var progress: Double
    
    var body: some View {
        ZStack {
            //background
            Circle()
                .stroke(Color.gray.opacity(0.2), lineWidth: 10)
                .frame(width: 250, height: 250)
                
            
            //foreground that fills up
            Circle()
                
                .trim(from: 0, to: progress)
                .stroke(Color.purple, lineWidth: 10)
                .rotationEffect(.degrees(-90))
                .animation(.easeInOut, value: progress)
                .frame(width: 250, height: 250)
        }
        
    }
}
