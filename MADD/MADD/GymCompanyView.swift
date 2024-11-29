import SwiftUI

struct GymCompanyView: View {
    @State private var gyms = [
        Gym(name: "Fitness Center", location: "123 Main St", imageName: "gym1"),
        Gym(name: "Powerhouse Gym", location: "456 Elm St", imageName: "gym2"),
        Gym(name: "Health Club", location: "789 Oak St", imageName: "gym3"),
        Gym(name: "Elite Fitness", location: "101 Pine St", imageName: "gym4")
    ]

    var body: some View {
        NavigationView {
            VStack(spacing: 10) {
                // List of gyms with NavigationLink to GymDetailView
                List(gyms) { gym in
                    NavigationLink(destination: GymDetailView(gym: gym)) { // Navigate to GymDetailView
                        VStack(alignment: .leading) {
                            Text(gym.name)
                                .font(.headline)
                            Text(gym.location)
                                .font(.subheadline)
                                .foregroundColor(.gray)
                        }
                    }
                }
            }
            .padding() // General padding for the VStack
            .navigationTitle("Gym Company")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    NavigationLink(destination: AddGymView(gyms: $gyms)) { // Navigate to AddGymView
                        Label("Add Gym", systemImage: "plus")
                    }
                }
            }
        }
    }
}

#Preview {
    GymCompanyView()
}
