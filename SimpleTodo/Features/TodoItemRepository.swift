//
//  TodoItemRepository.swift
//  SimpleTodo
//
//  Created by Edgar Kenji Yamamoto on 31/10/20.
//

import Foundation
import Combine
import SwiftUI

class TodoItemRepository : ObservableObject {
    @Published var items: [TodoItem] = []
    
    init(items: [TodoItem] = []) {
        self.items = items
    }
}
