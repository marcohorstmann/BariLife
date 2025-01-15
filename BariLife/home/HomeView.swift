//
//  HomeView.swift
//  BariLife
//
//  Created by Marco Horstmann on 16.01.25.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
            VStack {
                LazyVGrid(columns: Array(repeating: GridItem(spacing:20), count: 2)) {
                    ActivityCard()
                    ActivityCard()
                }
                .padding(.horizontal)
            }
    }
}

#Preview {
    HomeView()
}
