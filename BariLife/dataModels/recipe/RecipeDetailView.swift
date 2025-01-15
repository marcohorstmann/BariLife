//
//  RecipeDetailView.swift
//  BariLife
//
//  Created by Marco Horstmann on 14.01.25.
//
import Foundation
import SwiftUI

public struct RecipeDetailView: View {
    @Bindable var recipe: Meal
    public var body: some View {
        Form {
            // if let recipe = recipe {
            //Text("Total leckere Pfannkuchen")
            //    .font(.title)
            //    .fontWeight(.bold)
            
            Text("Zutaten:")
                .font(.headline)
                .fontWeight(.bold)
            //ForEach(recipe.ingredients, id: \.self) { ingredient in
            //    Text("• \(ingredient.amount) \(ingredient.name)")
            Text("• 250g Zucker")
            Text("• 100g Mehl")
            Text("• 500ml Wasser")
            
            Text("Anleitung:")
                .font(.headline)
                .fontWeight(.bold)
            //ForEach(recipe.steps.indices, id: \.self) { index in
            //    Text("Schritt \(index + 1): \(recipe.steps[index])")
             Text("Schritt 1: Zucker in ein großes Topf geben und kochen lassen.")
             Text("Schritt 2: Mehl und Wasser hinzufügen und weiter kochen lassen.")
            //}
            /* } else {
             Text("Rezept wird geladen...")
             .onAppear {
             loadRecipe()
             } */
            Spacer()
        }
        .padding()
        .navigationTitle(recipe.name)
    }
}

#Preview {
    @Previewable @State var recipe = Meal(name: "Test 123")
    RecipeDetailView(recipe: recipe)
        .modelContainer(for: [Meal.self])
}
