import SwiftUI

struct FirstView: View {
    var body: some View {
        NavigationView { // Wrap in NavigationView for navigation capabilities
            VStack {
                Spacer() // Pushes the content to the center
                
                Text("fitSL")
                    .font(.largeTitle) // Large font size for emphasis
                    .fontWeight(.bold) // Bold font weight
                    .padding() // Adds padding around the text
                
                Spacer() // Pushes the content to the center
                
                // Go Button
                NavigationLink(destination: GymCompanyView()) { // Navigate to GymCompanyView
                    Text("Go") // Button text
                        .frame(maxWidth: .infinity) // Make button full width
                        .padding() // Add padding inside the button
                        .background(Color.blue) // Background color of the button
                        .foregroundColor(.white) // Text color of the button
                        .cornerRadius(10) // Rounded corners for the button
                }
                .padding(.bottom, 50) // Padding at the bottom of the button
            }
            .padding()
            .navigationTitle("Welcome") // Optional: Title for navigation
        }
    }
}

#Preview {
    FirstView()
}
