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
                        RecipeDetailView(recipe: recipe)
                    }
                    
                }
                //ForEach(recipes) { recipe in
                //NavigationLink(value: recipe) {
                //    RecipeListRow(recipe: recipe)
                // }
                
                // }
            }
            .navigationTitle("Rezepte")
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Image(systemName: "plus")
                }
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

#Preview {
    RecipeView()
    .modelContainer(for: [Meal.self])
}
