//
//  MealIngredient.swift
//  BariLife
//
//  Created by Marco Horstmann on 14.01.25.
//
// In dieser "Klasse" werden zutaten zusammengestellt

import Foundation
import SwiftData
import SwiftUI

@Model
class MealIngredient {
    var foodProduct: FoodProduct
    var usedAmount: Double // Die Menge, die im Rezept verwendet wird
    var unit: WeightUnit

    init(foodProduct: FoodProduct, usedAmount: Double, unit: WeightUnit) {
        self.foodProduct = foodProduct
        self.usedAmount = usedAmount
        self.unit = unit
    }
}
