//
//  CheckboxTextfield.swift
//  SimpleTodo
//
//  Created by Edgar Kenji Yamamoto on 26/11/20.
//

import SwiftUI

struct CheckboxTextfield : View {
    @State var item: TodoItem
    
    var body: some View {
        Checkbox(isChecked: $item.checked) {
            TextField("Tap to edit your to-do item", text: $item.description)
        }
    }
}

struct CheckboxText_Preview: PreviewProvider {
    static var previews: some View {
        CheckboxTextfield(item: TodoItem(description: "Teste", checked: true))
    }
}

