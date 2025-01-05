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
    @Query var recipes: [Meal]
    
    var body: some View {
        List {
            ForEach(recipes) { recipe in
                //NavigationLink(value: recipe) {
                //    RecipeListRow(recipe: recipe)
                // }
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
}
