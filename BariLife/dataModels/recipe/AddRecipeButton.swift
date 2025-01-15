//
//  AddCategoryButton.swift
//  Einkaufslisten
//
//  Created by Marco Horstmann on 06.01.25.
//

import Foundation
import SwiftUI
import SwiftData

struct AddRecipeButton: View {
    @State var showSheet: Bool = false

    var body: some View {
        Button {
            showSheet = true
        } label: {
            Image(systemName: "plus")
        }
        .sheet(isPresented: $showSheet) {
            AddRecipeView()
                .presentationDetents([.medium])
        }
    }
}

#Preview {
    AddRecipeButton()
        .modelContainer(for: [Meal.self])
 //       .modelContainer(for: [Category.self], inMemory: true)
}
