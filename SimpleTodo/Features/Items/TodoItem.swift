//
//  TodoItem.swift
//  SimpleTodo
//
//  Created by Edgar Kenji Yamamoto on 27/10/20.
//

import Foundation

struct TodoItem: Identifiable {
    var id: UUID = UUID()
    var description: String
    var checked: Bool
}
