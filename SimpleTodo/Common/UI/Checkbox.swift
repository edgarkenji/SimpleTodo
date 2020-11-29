//
//  Checkbox.swift
//  SimpleTodo
//
//  Created by Edgar Kenji Yamamoto on 04/11/20.
//

import SwiftUI

struct Checkbox<Label: View> : View {
    
    @Binding var checked: Bool
    private var label: Label
    
    init(isChecked: Binding<Bool>, @ViewBuilder label: () -> Label) {
        self._checked = isChecked
        self.label = label()
    }

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
            } else {
                Spacer()
                    .frame(width: 20, height: 20, alignment: .trailing)
                    .padding(EdgeInsets(top: 0, leading: 4, bottom: 4, trailing: 0))
            }
        }
    }
    
    var body: some View {
        HStack {
            Button(action: {
                checked.toggle()
            }, label: {
                checkbox
            })
            label
        }
    }
}

#if DEBUG
struct Checkbox_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            Checkbox(isChecked: .constant(true), label: { Text("Checked") })
                .preferredColorScheme(.dark)
            Checkbox(isChecked: .constant(false), label: { Text("Not checked") })
        }
    }
}
#endif
