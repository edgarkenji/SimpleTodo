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
    @AppStorage("items") var storedItems: Data?
    
    private var cancellable: AnyCancellable?
    
    init(items: [TodoItem] = []) {
        if let stored = storedItems {
            self.items = (try? JSONDecoder().decode([TodoItem].self, from: stored)) ?? items
        } else {
            self.items = items
        }
        
        cancellable = $items.sink(receiveValue: { (items) in
            self.storedItems = try? JSONEncoder().encode(items)
        })
    }
    
    deinit {
        cancellable?.cancel()
    }
}
