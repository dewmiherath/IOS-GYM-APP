import SwiftUI

struct GymDetailView: View {
    var gym: Gym // Accept a Gym object to display its details

    var body: some View {
        VStack(spacing: 10) {
            Text(gym.name)
                .font(.largeTitle)
                .padding(.top) // Optional padding at the top

            Image(gym.imageName) // Display the gym's image
                .resizable()
                .scaledToFit()
                .frame(height: 200) // Set height for the image
                .cornerRadius(10)

            Text("Location: \(gym.location)")
                .font(.headline)
                .padding()

            // Buttons for actions
            HStack(spacing: 10) {
                NavigationLink(destination: LocationView(gym: gym)) { // Navigate to LocationView with gym object
                    Label("Location", systemImage: "mappin.and.ellipse")
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.blue.opacity(0.2))
                        .foregroundColor(.blue)
                        .cornerRadius(8)
                }

                NavigationLink(destination: CallView(phoneNumber: "1234567890")) { // Navigate to CallView with phone number
                    Label("Call", systemImage: "phone.fill")
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.green.opacity(0.2))
                        .foregroundColor(.green)
                        .cornerRadius(8)
                }

                Button(action: {
                    if let url = URL(string: "sms://1234567890") { // Replace with actual phone number
                        UIApplication.shared.open(url)
                    }
                }) {
                    Label("Message", systemImage: "message.fill")
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.orange.opacity(0.2))
                        .foregroundColor(.orange)
                        .cornerRadius(8)
                }
            }
            .frame(height: 50)

            Spacer()
        }
        .padding() // General padding for the VStack
        .navigationTitle(gym.name) // Set the title to the gym's name
    }
}

#Preview {
    GymDetailView(gym: Gym(name: "Fitness Center", location: "123 Main St", imageName: "gym1"))
}
