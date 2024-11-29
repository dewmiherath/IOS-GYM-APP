//
//  AddGymView.swift
//  MADD
//
//  Created by IM Student on 2024-11-28.
//

import Foundation
import SwiftUI

struct AddGymView: View {
    @Binding var gyms: [Gym] // Binding to the gyms array

    @State private var name = ""
    @State private var location = ""
    @State private var imageName = ""

    var body: some View {
        Form {
            Section(header: Text("Gym Details")) {
                TextField("Gym Name", text: $name)
                TextField("Location", text: $location)
                TextField("Image Name", text: $imageName)
            }

            Button(action: addGym) {
                Text("Add Gym")
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
        }
        .navigationTitle("Add New Gym")
    }

    private func addGym() {
        let newGym = Gym(name: name, location: location, imageName: imageName.isEmpty ? "defaultImage" : imageName)
        gyms.append(newGym) // Add the new gym to the list

        // Reset fields after adding (optional)
        name = ""
        location = ""
        imageName = ""
    }
}

#Preview {
    NavigationView {
        AddGymView(gyms: .constant([]))
    }
}
