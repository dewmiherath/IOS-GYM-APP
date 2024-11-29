// LocationView.swift
import SwiftUI
import MapKit

struct LocationView: View {
    var gym: Gym // Accept a Gym object to display its location

    // Example coordinates for demonstration purposes
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 37.7749, longitude: -122.4194), // Example: San Francisco
        span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
    )

    var body: some View {
        Map(coordinateRegion: $region)
            .edgesIgnoringSafeArea(.all) // Make the map fill the entire view
            .navigationTitle(gym.name) // Set the title of the navigation bar
            .onAppear {
                // Optionally update the region based on gym's actual location if you have it
                updateRegion()
            }
    }

    private func updateRegion() {
        // If you have actual coordinates for the gym, update the region here.
        // This is just a placeholder for now.
        // Example:
        // self.region.center = CLLocationCoordinate2D(latitude: gym.latitude, longitude: gym.longitude)
    }
}

#Preview {
    LocationView(gym: Gym(name: "Fitness Center", location: "123 Main St", imageName: "gym1"))
}
