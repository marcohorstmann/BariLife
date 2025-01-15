//
//  BariLifeApp.swift
//  BariLife
//
//  Created by Marco Horstmann on 05.01.25.
//

import SwiftUI
import SwiftData

@main
struct BariLifeApp: App {
    var body: some Scene {
        WindowGroup {
            MainView()
				.modelContainer(for: [
					Meal.self,
					MealIngredient.self,
					FoodProduct.self
				])
        }
    }
}
