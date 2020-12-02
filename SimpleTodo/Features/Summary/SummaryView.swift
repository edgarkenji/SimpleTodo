//
//  SummaryView.swift
//  SimpleTodo
//
//  Created by Edgar Kenji Yamamoto on 30/10/20.
//

import SwiftUI

struct SummaryView : View {
    @Binding var list: [TodoItem]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(list, id: \.id) {
                    if $0.checked {
                        Text($0.description)
                            .strikethrough()
                    } else {
                        Text($0.description)
                    }
                }
            }.navigationTitle("Summary")
        }
    }
}

struct SummaryView_Previews: PreviewProvider {
    static var previews: some View {
        SummaryView(list: .constant([
            TodoItem(id: UUID(), description: "Teste 1", checked: true),
            TodoItem(id: UUID(), description: "Teste 2", checked: false)
        ]))
    }
}
