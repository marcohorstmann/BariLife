//
//  FoodProduct.swift
//  BariLife
//
//  Created by Marco Horstmann on 14.01.25.
//

import Foundation
import SwiftData

struct FoodProduct {
    var id: UUID = UUID()
    var name: String
    var weight: Double
    var weightUnit: WeightUnit
    var naEnergyKJ: Double? = nil
    var naEnergyKcal: Double? = nil
    var naFatSum: Double? = nil                   // Gesamt Fettsäuren
    var naFatSaturated: Double? = nil             // Gesättigte Fettsäuren
    var naCarbonhydrateSum: Double? = nil        // Gesamt Kohlenhydrate
    var naCarbonhydrateSugar: Double? = nil       // Zucker
    var naProteinSum: Double? = nil               // Eiweiß
    var naSalt: Double? = nil                     // Salz
    
    init(id: UUID, name: String, weight: Double, weightUnit: WeightUnit) {
        self.id = id
        self.name = name
        self.weight = weight
        self.weightUnit = weightUnit
    }
}

/*
 z.B. Linsen
 FoodProduct(name: "Apfel", weight: 200.0, unit: .gram, naEnergyKcal: 52.0),
 FoodProduct(name: "Milch", weight: 1000.0, unit: .milliliter, naEnergyKcal: 42.0, naProteinSum: 3.4),
 FoodProduct(name: "Schokolade", weight: 100.0, unit: .gram, naEnergyKcal: 546.0
 FoodProduct
 
 
 
 */
