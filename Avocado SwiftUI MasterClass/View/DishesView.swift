//
//  DishesView.swift
//  Avocado SwiftUI MasterClass
//
//  Created by Aran Fononi on 21/4/25.
//

import SwiftUI

struct DishesView: View {
    var body: some View {
        HStack {
            DishesRowView(image: "icon-toasts", text: "Toasts", isTextLeft: false)
            
            Image(systemName: "heart.circle")
            
            DishesRowView(image: "icon-guacamole", text: "Guacamole", isTextLeft: true)
            
        } //: HStack
        .font(.system(.callout, design: .serif))
        .foregroundStyle(.gray)
        .padding(.horizontal)
        .frame(maxHeight: 220)
    }
}

#Preview {
    DishesView()
}
