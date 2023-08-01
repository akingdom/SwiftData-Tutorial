//
//  SwiftDataTutorialApp.swift
//  SwiftDataTutorial
//
//  Created by DOYEON JEONG on 2023/07/06.
//

// MARK: 2. Setting up the container

import SwiftUI
import SwiftData

@main
struct SwiftDataTutorialApp: App {

    var body: some Scene {
        WindowGroup {
            TodoListView()
                .modelContainer(for: Todo.self) // Set the environment by passing the schema you want
            // You can register multiple schemas like .modelContainer(for: [Todo.self, Tag.self]).
        }
    }
}
