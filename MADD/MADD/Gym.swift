//
//  Gym.swift
//  MADD
//
//  Created by IM Student on 2024-11-28.
//

import Foundation
// Gym.swift
import Foundation

struct Gym: Identifiable {
    var id = UUID() // Unique identifier for each gym
    var name: String
    var location: String
    var imageName: String // Name of the image asset
}
// SampleData.swift (optional)
import Foundation

let sampleGyms = [
    Gym(name: "Fitness Center", location: "123 Main St", imageName: "gym1"),
    Gym(name: "Elite Gym", location: "456 Elm St", imageName: "gym2"),
    Gym(name: "Powerhouse Gym", location: "789 Oak St", imageName: "gym3"),
    Gym(name: "Fitness", location: "ParkStreet Colombo", imageName: "gym4"),
    Gym(name: "FitnessSL", location: "Malabe Waliwita", imageName: "gym5"),
 
]
