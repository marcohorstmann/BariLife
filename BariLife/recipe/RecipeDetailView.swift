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
        NavigationStack {
            List {
                Text("Zutaten:")
                                .font(.headline)
                                .fontWeight(.bold)
                ForEach(recipe.ingredient) { ingredient in
                    Text("• \(ingredient.usedAmount) \(ingredient.foodProduct.name)")
                }
            }
        }
        .navigationTitle(recipe.name)
        .toolbar {
            ToolbarItem(placement: .topBarTrailing) {
                AddIngredientButton()
            }
        }
    }
}

#Preview {
    /*@Previewable @State var recipe = Meal(name: "Test 123")
    RecipeDetailView(recipe: recipe)
        .modelContainer(for: [Meal.self])
     */
    MainView()
}
