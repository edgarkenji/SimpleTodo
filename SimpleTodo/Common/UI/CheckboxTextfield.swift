//
//  CheckboxTextfield.swift
//  SimpleTodo
//
//  Created by Edgar Kenji Yamamoto on 26/11/20.
//

import SwiftUI

struct CheckboxTextfield : View {
    @State var item: TodoItem
    var onUpdate: (TodoItem)->()
    
    var body: some View {
        Checkbox(isChecked: $item.checked) {
            TextField("Tap to edit your to-do item", text: $item.description) { (editing) in
                if !editing {
                    onUpdate(self.item)
                }
            } onCommit: {
                onUpdate(self.item)
            }
        }
    }
}

struct CheckboxText_Preview: PreviewProvider {
    static var previews: some View {
        CheckboxTextfield(item: TodoItem(description: "Teste", checked: true), onUpdate: { _ in })
    }
}

