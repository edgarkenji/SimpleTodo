//
//  ContentView.swift
//  SimpleTodo
//
//  Created by Edgar Kenji Yamamoto on 23/10/20.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var repository: TodoItemRepository
    
    var body: some View {
        TabView {
            TodoItemsView(viewModel: TodoItemsViewModel(repository: repository))
                .tabItem {
                    Image(systemName: "checkmark.square")
                    Text("To-do")
                }
            SummaryView(list: $repository.items)
                .tabItem {
                    Image(systemName: "list.bullet")
                    Text("Summary")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(TodoItemRepository(items: [
                TodoItem(id: UUID(), description: "Teste 1", checked: false),
                TodoItem(id: UUID(), description: "Teste 2", checked: false)
            ]))
    }
}
