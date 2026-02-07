//
//  TodoStore.swift
//  XP-App
//
//  Created by Matt Harpur on 2/7/26.
//

import SwiftUI
import Combine

class TodoStore: ObservableObject {
    @Published var todos: [Todo] = []
    
    func delete(at offsets: IndexSet) {
        
        todos.remove(atOffsets: offsets)
        
    }
    
    
}
