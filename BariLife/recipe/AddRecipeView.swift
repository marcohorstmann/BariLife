//
//  AddRecipeView.swift
//  BariLife
//
//  Created by Marco Horstmann on 15.01.25.
//

import Foundation
import SwiftUI
import SwiftData

struct AddRecipeView: View {
    
    @State private var name = ""
    //@State private var date = Date()
    @Environment(\.modelContext) var modelContext
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        Form {
            Section {
                TextField("Name", text: $name)
                //DatePicker("Datum", selection: $date, displayedComponents: .date)
            }
            Section {
                Button("Speichern") {
                    let RecipeListNew = Meal(name: name)
                    modelContext.insert(RecipeListNew)
                    dismiss()
                    RecipeDetailView(recipe: RecipeListNew)
                }
            }
        }
    }
}

#Preview {
    AddRecipeView()
        .modelContainer(for: [Meal.self], inMemory: true)
}
