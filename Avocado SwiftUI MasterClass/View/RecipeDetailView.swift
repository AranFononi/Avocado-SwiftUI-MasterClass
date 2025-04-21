//
//  RecipeDetailView.swift
//  Avocado SwiftUI MasterClass
//
//  Created by Aran Fononi on 22/4/25.
//

import SwiftUI

struct RecipeDetailView: View {
    // MARK: - Property
    @State private var pulsate: Bool = false
    var recipe: Recipe
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center, spacing: 0) {
                Image(recipe.image)
                    .resizable()
                    .scaledToFit()
                Group {
                    
                    // Title
                    Text(recipe.title)
                        .font(.system(.largeTitle, design: .serif))
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                        .foregroundStyle(.colorGreenAdaptive)
                        .padding(.top, 10)
                    
                    // Rating
                    RecipeRatingView(recipe: recipe)
                    
                    // Cooking
                    RecipeCookingView(recipe: recipe)
                    
                    // Ingredients
                    Text("Ingredients")
                        .modifier(TitleModifier())
                    
                    VStack(alignment: .leading, spacing: 5) {
                        ForEach(recipe.ingredients, id: \.self) { ingredient in
                            VStack(alignment: .leading, spacing: 5) {
                                Text(ingredient)
                                    .font(.footnote)
                                    .multilineTextAlignment(.leading)
                                
                                Divider()
                            } //: VStack
                        } //: Loop
                    } //: VStack
                    
                    // Instructions
                    Text("Instructions")
                        .modifier(TitleModifier())
                    

                        ForEach(recipe.instructions, id: \.self) { instruction in
                            VStack(alignment: .center, spacing: 5) {
                                Image(systemName: "chevron.down.circle")
                                    .resizable()
                                    .frame(width: 42, height: 42, alignment: .center)
                                    .imageScale(.large)
                                    .font(.title.weight(.ultraLight))
                                    .foregroundStyle(Color("ColorGreenAdaptive"))
                                    .padding()
                                
                                Text(instruction)
                                    .font(.system(.body, design: .serif))
                                    .lineLimit(nil)
                                    .multilineTextAlignment(.leading)
                                    .frame(minHeight: 100)
                                
                                Divider()
                            } //: VStack
                        } //: Loop
                    
                    
                } //: Group
                .padding(.horizontal, 24)
                .padding(.vertical, 12)
            } //: VStack
        } //: Scroll
        .ignoresSafeArea(edges: .top)
        .overlay {
            HStack {
                Spacer()
                
                VStack {
                    Button {
                        presentationMode.wrappedValue.dismiss()
                    } label: {
                        Image(systemName: "chevron.down.circle.fill")
                            .font(.title)
                            .foregroundStyle(.white)
                            .shadow(radius: 4)
                            .opacity(pulsate ? 1 : 0.6)
                            .scaleEffect(pulsate ? 1.2 : 0.8, anchor: .center)
                            .animation(.easeInOut(duration: 1.5).repeatForever(autoreverses: true), value: pulsate)
                    }
                    .padding(.trailing, 20)
                    .padding(.top, 24)
                    
                    Spacer()
                } //: VStack
            } //: HStack
        } //: Overlay
        .onAppear {
            pulsate.toggle()
        }
    }
}

#Preview {
    RecipeDetailView(recipe: recipesData[3])
}
