//
//  DishesRowView.swift
//  Avocado SwiftUI MasterClass
//
//  Created by Aran Fononi on 21/4/25.
//

import SwiftUI

struct DishesRowView: View {
    var image: String
    var text: String
    var isTextLeft: Bool
    var body: some View {
        if isTextLeft {
            HStack {
                Text(text)
    
                Spacer()
                
                Image(image)
                    .resizable()
                    .frame(width: 42, height: 42, alignment: .center)
                
            } //: HStack
        } else {
            HStack {
                Image(image)
                    .resizable()
                    .frame(width: 42, height: 42, alignment: .center)
                
                Spacer()
                
                Text(text)
            } //: HStack
        }
    }
}

#Preview {
    DishesRowView(image: "icon-toasts", text: "Toasts", isTextLeft: true)
}
