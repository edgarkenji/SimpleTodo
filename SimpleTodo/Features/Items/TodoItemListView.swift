//
//  TodoItemListView.swift
//  SimpleTodo
//
//  Created by Edgar Kenji Yamamoto on 27/10/20.
//

import SwiftUI

struct TodoItemListView: View {
    
    @Binding var items: [TodoItem]
    
    var body: some View {
        List {
            ForEach(items.indices) { (index) in
                Checkbox(isChecked: self.$items[index].checked) {
                    Text(self.items[index].description)
                }
            }
        }
    }
}

struct TodoItemListView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            TodoItemListView(items: .constant([
                TodoItem(description: "Teste", checked: true),
                TodoItem(description: "Teste 2", checked: false)
            ]))
            TodoItemListView(items: .constant([]))
        }
    }
}
