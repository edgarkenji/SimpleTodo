//
//  CheckboxText.swift
//  SimpleTodo
//
//  Created by Edgar Kenji Yamamoto on 26/11/20.
//

import SwiftUI

struct CheckboxText : View {
    @State var item: TodoItem
    
    var body: some View {
        Checkbox(isChecked: $item.checked) {
            Text(item.description)
        }
    }
}

struct CheckboxText_Preview: PreviewProvider {
    static var previews: some View {
        CheckboxText(item: TodoItem(description: "Teste", checked: true))
    }
}

