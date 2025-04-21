//
//  RecipeCardView.swift
//  Avocado SwiftUI MasterClass
//
//  Created by Aran Fononi on 22/4/25.
//

import SwiftUI

struct RecipeCardView: View {
    // MARK: - Property
    var recipe: Recipe
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Image(recipe.image)
                .resizable()
                .scaledToFit()
                .overlay {
                    HStack {
                        Spacer()
                        VStack {
                            Image(systemName: "bookmark")
                                .font(.title.weight(.light))
                                .foregroundStyle(.white)
                                .imageScale(.small)
                                .shadow(color: .colorBlackTransparent, radius: 2, x: 0, y: 0)
                                .padding(.trailing, 20)
                                .padding(.top, 22)
                            Spacer()
                        } //: VStack
                    }  //: HStack
                } //: Overlay
            VStack(alignment: .leading, spacing: 12) {
                // Title
                Text(recipe.title)
                    .font(.system(.title, design: .serif))
                    .fontWeight(.bold)
                    .foregroundStyle(.colorGreenMedium)
                    .lineLimit(1)
                
                // Headline
                Text(recipe.headline)
                    .font(.system(.body, design: .serif))
                    .foregroundStyle(.gray)
                    .italic()
                
                // Rates
                HStack {
                    ForEach(1...(recipe.rating), id: \.self) { _ in
                        Image(systemName: "star.fill")
                            .font(.body)
                            .foregroundStyle(.yellow)
                    }
                } //: HStack
                
                // Cooking
                HStack(alignment: .center, spacing: 12) {
                    HStack(alignment: .center, spacing: 2) {
                        Image(systemName: "person.2")
                        
                        Text("Serves: \(recipe.serves)")
                    } //: Serves HStack
                    
                    HStack(alignment: .center, spacing: 2) {
                        Image(systemName: "clock")
                        
                        Text("Prep: \(recipe.preparation)")
                    } //: Prep HStack
                    
                    HStack(alignment: .center, spacing: 2) {
                        Image(systemName: "flame")
                        
                        Text("Cooking: \(recipe.cooking)")
                    } //: Cooking HStack
                } //: HStack
                .font(.footnote)
                .foregroundStyle(.gray)
            } //: VStack
            .padding()
            .padding(.bottom, 12)
        }  //: VStack
        .background(
            .white
        )
        .clipShape(.rect(cornerRadius: 12))
        .shadow(color: .colorBlackTransparent, radius: 8, x: 0, y: 0)
    }
}

#Preview {
    RecipeCardView(recipe: recipesData[1])
        .padding()
}
