//
//  RecipeRatingView.swift
//  Avocado SwiftUI MasterClass
//
//  Created by Aran Fononi on 22/4/25.
//

import SwiftUI

struct RecipeRatingView: View {
    var recipe: Recipe
    var body: some View {
        HStack {
            ForEach(1...(recipe.rating), id: \.self) { _ in
                Image(systemName: "star.fill")
                    .font(.body)
                    .foregroundStyle(.yellow)
            }
        } //: HStack
    }
}

#Preview {
    RecipeRatingView(recipe: recipesData[0])
}
