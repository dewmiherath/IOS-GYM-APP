//
//  MessageView.swift
//  MADD
//
//  Created by IM Student on 2024-11-28.
//

import Foundation
import SwiftUI

struct MessageView: View {
    var body: some View {
        VStack(spacing: 10) {
            Text("Message Gym")
                .font(.largeTitle)
                .padding()

            Text("This is where you can send a message.")
                .font(.subheadline)
                .padding()

            // Additional UI elements for messaging functionality can be added here
        }
        .padding()
        .navigationTitle("Message Gym")
    }
}

#Preview {
    MessageView()
}
