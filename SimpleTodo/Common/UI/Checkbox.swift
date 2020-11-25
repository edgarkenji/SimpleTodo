//
//  Checkbox.swift
//  SimpleTodo
//
//  Created by Edgar Kenji Yamamoto on 04/11/20.
//

import SwiftUI

struct Checkbox : View {
    
    @State var checked: Bool
    
    var checkbox: some View {
        ZStack {
            Image(systemName: "square")
                .resizable()
                .frame(width:20, height:20, alignment: .center)
                .foregroundColor(.gray)
            if checked {
                Image(systemName: "checkmark")
                    .resizable()
                    .frame(width: 20, height: 20, alignment: .trailing)
                    .padding(EdgeInsets(top: 0, leading: 4, bottom: 4, trailing: 0))
                    .foregroundColor(Color.green)
            }
        }
    }
    
    var body: some View {
        Button(action: {
            checked.toggle()
        }, label: {
            checkbox
        })
    }
}

#if DEBUG
struct Checkbox_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            Checkbox(checked: true)
            Checkbox(checked: false)
        }
    }
}
#endif
