//
//  ContentView.swift
//  BariLife
//
//  Created by Marco Horstmann on 05.01.25.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            Tab("Home", systemImage: "house.fill") {
                
            }
            Tab("Rezepte", systemImage: "receipt") {
                Text("Test")
            }
            Tab("Test2", systemImage: "cart") {
                
            }
        }
    }
}

#Preview {
    MainView()
}
