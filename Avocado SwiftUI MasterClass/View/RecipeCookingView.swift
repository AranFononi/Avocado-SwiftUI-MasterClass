//
//  RecipeCookingView.swift
//  Avocado SwiftUI MasterClass
//
//  Created by Aran Fononi on 22/4/25.
//

import SwiftUI

struct RecipeCookingView: View {
    var recipe: Recipe
    var body: some View {
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
        }
    }
}

#Preview {
    RecipeCookingView(recipe: recipesData[0])
}
