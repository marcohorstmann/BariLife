//
//  HomeView.swift
//  BariLife
//
//  Created by Marco Horstmann on 16.01.25.
//

import SwiftUI

struct ActivityCard: View {
    var body: some View {
        ZStack {
            Color(uiColor: .systemGray6)
                .cornerRadius(15)
            VStack {
                HStack(alignment: .top) {
                    VStack(alignment: .leading, spacing: 5) {
                        Text("Schritte")
                        Text("Heute")
                            .font(.caption)
                            .foregroundColor(.gray)
                    }
                    Spacer()
                    
                    Image(systemName: "figure.walk")
                        .foregroundColor(.green)
                }
                Text("10,000")
                    .font(.system(size:24))
            }
            .padding()
        }
        
    }
        //.cornerRadius(15)
}

#Preview {
    ActivityCard()
}
