//
//  ContentView.swift
//  Avocado SwiftUI MasterClass
//
//  Created by Aran Fononi on 21/4/25.
//

import SwiftUI

struct ContentView: View {
    var headers = headersData
    var facts : [Fact] = factsData
    var recipes : [Recipe] = recipesData
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center, spacing: 20) {
                // MARK: - Header
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(alignment: .top, spacing: 0) {
                        ForEach(headers) { header in
                            HeaderView(header: header)
                        } //: Loop
                    } //: HStack
                } //: Scroll
                
                // MARK: - Dishes
                Text("Avocado Dishes")
                    .modifier(TitleModifier())
                DishesView()
                
                // MARK: - Avocado Facts
                Text("Avocado Facts")
                    .modifier(TitleModifier())
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(alignment: .top, spacing: 60) {
                        ForEach(facts) { fact in
                            FactsView(fact: fact)
                        }  //: Loop
                    }  //: HStack
                    .padding(.leading, 60)
                    .padding(.trailing, 20)
                }  //: Scroll
                
                // MARK: - Recipe Cards
                Text("Avocado Recipes")
                    .modifier(TitleModifier())
                
                VStack(alignment: .center, spacing: 20) {
                    ForEach(recipes) { recipe in
                        RecipeCardView(recipe: recipe)
                    } //: Loop
                } //: VStack
                .frame(maxWidth: 640)
                .padding(.horizontal)
                
                // MARK: - Footer
                VStack(alignment: .center, spacing: 20) {
                    Text("All About Avocados")
                        .modifier(TitleModifier())
                        
                    Text("Everything you wanted to know about avocados, but were too afraid to ask.")
                        .font(.system(.body, design: .serif))
                        .multilineTextAlignment(.center)
                        .foregroundStyle(.gray)
                        .frame(minHeight: 60)
                } //: VStack
                .frame(maxWidth: 640)
                .padding()
                .padding(.bottom, 85)
            } //: VStack
        } //: ScrollView
        .ignoresSafeArea(edges: .all)
    }
}

struct TitleModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.system(.title, design: .serif))
            .fontWeight(.bold)
            .foregroundStyle(.colorGreenAdaptive)
            .padding(8)
    }
}

#Preview {
    ContentView()
}
