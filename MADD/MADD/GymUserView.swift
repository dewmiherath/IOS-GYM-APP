// GymUserView.swift
import SwiftUI

struct GymUserView: View {
    @State private var username: String = ""

    var body: some View {
        VStack(spacing: 10) {
            Text("Gym User Details")
                .font(.largeTitle)
                .padding()

            TextField("Username", text: $username)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()

            // Continue Button
            NavigationLink(destination: EventTimetableView()) { // Navigate to EventTimetableView
                Text("Continue")
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            .padding(.top, 20)

            Spacer()
        }
        .padding()
        .navigationTitle("Gym User")
    }
}

#Preview {
    GymUserView()
}
