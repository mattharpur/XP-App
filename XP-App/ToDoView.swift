//
//  TodoView.swift
//  XP-App
//
//  Created by Matt Harpur on 2/7/26.
//

import SwiftUI

struct TodoView: View {
    
    @EnvironmentObject var todoStore: TodoStore
    @State private var newTodoText: String = ""
    
    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                Text("Write down your hacks and to-dos to do before submitting your project!")
                HStack {
                    
                    //changes keybaord button to done and dissmisses keybaord
                    TextField("New To-Do...", text: $newTodoText)
                        .textFieldStyle(.roundedBorder)
                        .submitLabel(.done)
                        .onSubmit{
                            UIApplication.shared.sendAction(#selector(UIResponder.resolveClassMethod(_:)), to: nil, from: nil, for: nil)
                            
                        }
                        .frame(width:310, height: 50)
                    
                    Button("Add") {
                        
                        addTodo()
                    }
                    
                    
                }
                
                List {
                    ForEach(todoStore.todos) { todo in
                        
                        HStack {
                            
                            Text(todo.title)
                            
                            Spacer()
                            
                            Image(systemName: todo.isCompleted ? "checkmark.circle.fill" : "circle")
                                .foregroundColor(.blue)
                                .onTapGesture {
                                    toggleTodo(todo)
                                }
                                .frame(width: 15 , height: 15)
                            
                        }
                        
                        
                    }
                    .onDelete(perform: deleteTodos)
                    
                    
                }
                
            }
            .navigationTitle(Text("To-Do List"))
        }
    }
    
    
    private func addTodo() {
        guard !newTodoText.isEmpty else { return }

        let todo = Todo(id: UUID(), title: newTodoText, isCompleted: false)
        todoStore.todos.append(todo)
        newTodoText = ""
    }

    private func toggleTodo(_ todo: Todo) {
        if let index = todoStore.todos.firstIndex(where: { $0.id == todo.id }) {
            todoStore.todos[index].isCompleted.toggle()
        }
    }
    
    private func deleteTodos(at offsets: IndexSet) {
        todoStore.todos.remove(atOffsets: offsets)
    }
    
}

