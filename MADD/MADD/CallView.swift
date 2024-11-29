// CallView.swift
import SwiftUI

struct CallView: View {
    var phoneNumber: String // Phone number to display

    var body: some View {
        VStack(spacing: 10) {
            Text("Calling \(phoneNumber)")
                .font(.largeTitle)
                .padding()

            Text("You are about to call this number.")
                .font(.subheadline)
                .padding()

            // Placeholder for call interface
            Image(systemName: "phone.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100)
                .foregroundColor(.green)

            Spacer()

            // Button to actually make the call
            Button(action: {
                if let url = URL(string: "tel://\(phoneNumber)") {
                    UIApplication.shared.open(url)
                }
            }) {
                Text("Make Call")
                    .padding()
                    .background(Color.green)
                    .foregroundColor(.white)
                    .cornerRadius(8)
            }
        }
        .padding()
        .navigationTitle("Call")
    }
}

#Preview {
    CallView(phoneNumber: "1234567890") // Example phone number for preview
}
