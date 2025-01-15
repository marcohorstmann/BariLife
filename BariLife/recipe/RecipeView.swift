//
//  RecipeView.swift
//  BariLife
//
//  Created by Marco Horstmann on 14.01.25.
//

import Foundation
import SwiftUI
import SwiftData

struct RecipeView: View {
    @Environment(\.modelContext) private var modelContext
    @Query var recipes: [Meal]
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(recipes) { recipe in
                    NavigationLink(value: recipe) {
                        //RecipeDetailView(recipe: recipe)
                        Text(recipe.name)
                    }
                    .swipeActions {
                        Button("Delete", role: .destructive) {
                            modelContext.delete(recipe)
                        }
                    }
                }
                }
            .navigationTitle("Rezepte")
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    //Image(systemName: "plus")
                    AddRecipeButton()
                }
            }
            .navigationDestination(for: Meal.self) { recipe in
                RecipeDetailView(recipe: recipe)
            }
        }
    }
}
struct RecipeListRow: View {
    var recipe: Meal
    var body: some View {
        HStack {
            Text(recipe.name)
            Spacer()
            Text("Test")
        }
    }
}
/*
#Preview {
    RecipeView()
    .modelContainer(for: [Meal.self])
}
*/
