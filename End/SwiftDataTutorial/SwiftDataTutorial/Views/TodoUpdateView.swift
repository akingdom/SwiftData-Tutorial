//
// TodoUpdateView.swift
// SwiftDataTutorial
//
// Created by DOYEON JEONG on 2023/07/06.
//

// MARK: 5. Using Bindable Properties

import SwiftUI

struct TodoUpdateView: View {
    
     @Environment(\.dismiss) var dismiss
     @Bindable var todo: Todo
    
     var body: some View {
        
         List {
             TextField("Name", text: $todo.title) // Changes to Bindable properties are automatically reflected
             Toggle("Important?", isOn: $todo.isImportant)
             Button("Update") {
                 dismiss() // no need for context.update in role of Update button
             }
         }
         .navigationTitle("Update To-Do")
     }
}

// As of Xcode Beta 2: There is a bug in the Swift compiler.
//This bug is related to the visibility of macro expansions in different scopes, so Preview deserves full comment.
//#Preview {
// TodoUpdateView(todo: Todo(title: "temporary"))
// If you set modelContainer's inMemory to true in Preview, it will only be saved in memory.
// .modelContainer(for: Todo.self, inMemory: true)
//}
