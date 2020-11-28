//
//  SimpleTodoApp.swift
//  SimpleTodo
//
//  Created by Edgar Kenji Yamamoto on 23/10/20.
//

import SwiftUI

@main
struct SimpleTodoApp: App {
    @ObservedObject var repository: TodoItemRepository = TodoItemRepository()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(repository)
        }
    }
}
