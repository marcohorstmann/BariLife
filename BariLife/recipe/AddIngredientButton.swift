//
//  AddIngredientButton.swift
//  BariLife
//
//  Created by Marco Horstmann on 16.01.25.
//

import Foundation
import SwiftUI
import SwiftData

struct AddIngredientButton: View {
    @State var showSheet: Bool = false

    var body: some View {
        Button {
            showSheet = true
        } label: {
            Image(systemName: "plus")
        }
        .sheet(isPresented: $showSheet) {
            Text("123")
            //AddRecipeView()
                .presentationDetents([.medium])
        }
    }
}

#Preview {
    AddRecipeButton()
        .modelContainer(for: [Meal.self])
 //       .modelContainer(for: [Category.self], inMemory: true)
}
