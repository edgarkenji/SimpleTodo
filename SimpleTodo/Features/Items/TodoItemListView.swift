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
        if items.isEmpty {
            TodoItemsEmptyView()
        } else {
            List {
                ForEach(items, id:\.id) { (item) in
                    CheckboxTextfield(item: item)
                }
                .onDelete(perform: { indexSet in // add this to allow deleting an item by swiping left on the item
                    items.remove(atOffsets: indexSet)
                })
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
