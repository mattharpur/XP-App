//
//  TodoStore.swift
//  XP-App
//
//  Created by Matt Harpur on 2/7/26.
//

import SwiftUI
import Combine

class TodoStore: ObservableObject {

    @Published var todos: [Todo] = [] {
        didSet {
            saveTodos()
        }
    }

    private let fileURL: URL

    init() {
       
        let documentsURL = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)[0]
        self.fileURL = documentsURL.appendingPathComponent("todos.json")

      
        loadTodos()
    }

    

    private func saveTodos() {
        do {
            let data = try JSONEncoder().encode(todos)
            try data.write(to: fileURL)
        } catch {
            print("Error saving todos - ", error)
        }
    }


    private func loadTodos() {
        do {
            let data = try Data(contentsOf: fileURL)
            let decoded = try JSONDecoder().decode([Todo].self, from: data)
            self.todos = decoded
        } catch {
            print("No saved todos - ", error)
        }
    }
    
    
}
