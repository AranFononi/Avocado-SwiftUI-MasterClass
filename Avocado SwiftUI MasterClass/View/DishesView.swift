//
//  DishesView.swift
//  Avocado SwiftUI MasterClass
//
//  Created by Aran Fononi on 21/4/25.
//

import SwiftUI

struct DishesView: View {
    var body: some View {
        HStack(alignment: .center, spacing: 4) {
            // Left Side
            VStack(alignment: .leading, spacing: 4) {
                DishesRowView(image: "icon-toasts", text: "Toasts", isTextLeft: false)
                
                Divider()
                
                DishesRowView(image: "icon-tacos", text: "Tacos", isTextLeft: false)
                
                Divider()
                
                DishesRowView(image: "icon-salads", text: "Salads", isTextLeft: false)
                
                Divider()
                
                DishesRowView(image: "icon-halfavo", text: "Spreads", isTextLeft: false)
            } //: VStack
            
            // Center
            VStack(alignment: .center, spacing: 16) {
                HStack {
                    Divider()
                } //: HStack
                
                Image(systemName: "heart.circle")
                    .font(.title)
                    .fontWeight(.ultraLight)
                    .imageScale(.large)
                
                HStack {
                    Divider()
                } //: HStack
            } //: VStack
            
            // RightSide
            VStack(alignment: .trailing, spacing: 4) {
                DishesRowView(image: "icon-guacamole", text: "Guacamole", isTextLeft: true)
                
                Divider()
                
                DishesRowView(image: "icon-sandwiches", text: "Sandwich", isTextLeft: true)
                
                Divider()
                
                DishesRowView(image: "icon-soup", text: "Soup", isTextLeft: true)
                
                Divider()
                
                DishesRowView(image: "icon-smoothies", text: "Smoothie", isTextLeft: true)
            } //: VStack
            
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
