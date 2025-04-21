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
            HStack {
                Image("icon-toasts")
                    .resizable()
                    .frame(width: 42, height: 42, alignment: .center)
                
                Spacer()
                
                Text("Toasts")
            } //: HStack
            
            Image(systemName: "heart.circle")
            
            HStack {
                Text("Guacamole")
                
                Spacer()
                
                Image("icon-guacamole")
                    .resizable()
                    .frame(width: 42, height: 42, alignment: .center)
            } //: HStack
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
