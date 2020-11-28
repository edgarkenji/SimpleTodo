//
//  TodoItemsView.swift
//  SimpleTodo
//
//  Created by Edgar Kenji Yamamoto on 28/10/20.
//

import SwiftUI

struct TodoItemsView: View {
    @ObservedObject var viewModel: TodoItemsViewModel
    
    init(viewModel: TodoItemsViewModel) {
        self.viewModel = viewModel
    }
    
    var body: some View {
        NavigationView {
            VStack {
                TodoItemListView(items: viewModel.$repository.items)
                    .listStyle(InsetGroupedListStyle())
                Button {
                    withAnimation {
                        viewModel.add(items: "Testing")
                    }
                } label: {
                    HStack {
                        Image(systemName: "plus")
                        Text("Add new item")
                    }.padding(EdgeInsets(top: 8, leading: 0, bottom: 12, trailing: 0))
                }
            }
            .navigationTitle("To-do")
        }.edgesIgnoringSafeArea(.all)
    }
}


struct TodoItemsView_Previews: PreviewProvider {
    
    static var repository: TodoItemRepository =
        TodoItemRepository(items: [
            TodoItem(description: "Teste 1", checked: false),
            TodoItem(description: "Teste 2", checked: false)
    ])
    static var viewModel: TodoItemsViewModel = TodoItemsViewModel(repository: repository)
        
    static var previews: some View {
        TodoItemsView(viewModel: viewModel)
    }
}
