//
//  TodoItemsViewModel.swift
//  SimpleTodo
//
//  Created by Edgar Kenji Yamamoto on 28/10/20.
//

import Foundation
import SwiftUI
import Combine

class TodoItemsViewModel : ObservableObject {
    @ObservedObject var repository: TodoItemRepository
    
    
    init(repository: TodoItemRepository) {
        self.repository = repository
    }
        
    func add(items: String...) {
        items.forEach {
            self.repository.items.append(TodoItem(description: $0, checked: false))
        }
    }
}
