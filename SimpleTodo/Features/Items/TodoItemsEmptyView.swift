//
//  TodoItemsEmptyView.swift
//  SimpleTodo
//
//  Created by Edgar Kenji Yamamoto on 30/11/20.
//

import SwiftUI

struct TodoItemsEmptyView : View {
    var body: some View {
        VStack {
            Spacer()
            Image(systemName: "tray")
                .resizable()
                .scaledToFit()
                .frame(width: 48, height: 48, alignment: .center)
                .foregroundColor(.gray)
            Text("Nothing to do, no way to go home!")
                .foregroundColor(.gray)
            Spacer()
        }
    }
}

struct TodoItemsEmptyView_Previews: PreviewProvider {
    static var previews: some View {
        TodoItemsEmptyView()
    }
}
