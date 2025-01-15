//
//  Meal.swift
//  BariLife
//
//  Created by Marco Horstmann on 14.01.25.
//

import Foundation
import SwiftUI
import SwiftData

@Model
class Meal: Identifiable {
    var id: UUID = UUID()
    var name: String
    var ingredients: [MealIngredient] = []
    var instructions: String? = nil
    
    init(name: String) {
        self.name = name
    }
}


/*
 
 func createExampleRecipe(context: ModelContext) {
     // Produkte erstellen
     let milk = FoodProduct(name: "Milch", weight: 1000.0, unit: "ml", naEnergyKcal: 42.0)
     let sugar = FoodProduct(name: "Zucker", weight: 500.0, unit: "g", naEnergyKcal: 400.0)
     let flour = FoodProduct(name: "Mehl", weight: 1000.0, unit: "g", naEnergyKcal: 364.0)

     // Produkte in den Kontext einfügen
     context.insert(milk)
     context.insert(sugar)
     context.insert(flour)

     // Rezeptzutaten erstellen
     let milkIngredient = RecipeIngredient(foodProduct: milk, usedAmount: 250.0, unit: "ml")
     let sugarIngredient = RecipeIngredient(foodProduct: sugar, usedAmount: 100.0, unit: "g")
     let flourIngredient = RecipeIngredient(foodProduct: flour, usedAmount: 500.0, unit: "g")

     // Rezept erstellen
     let cakeRecipe = Recipe(
         name: "Kuchen",
         ingredients: [milkIngredient, sugarIngredient, flourIngredient],
         instructions: "Alle Zutaten mischen und 30 Minuten bei 180°C backen."
     )

     // Rezept in den Kontext einfügen
     context.insert(cakeRecipe)

     // Änderungen speichern
     try? context.save()
 }
 
 */
