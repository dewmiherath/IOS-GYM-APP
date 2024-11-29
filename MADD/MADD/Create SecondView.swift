// SecondView.swift
import SwiftUI

struct SecondView: View {
    @State private var name: String = ""
    @State private var email: String = ""
    @State private var password: String = ""
    
    @State private var navigateToGymUser = false // State variable for navigating to Gym User
    @State private var navigateToGymCompany = false // State variable for navigating to Gym Company

    var body: some View {
        NavigationView { // Wrap in NavigationView
            VStack(spacing: 10) {
                Text("Edit Personal Details")
                    .font(.largeTitle)
                    .padding()

                // Form for user input
                Form {
                    Section(header: Text("Personal Information")) {
                        TextField("Name", text: $name)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                        
                        TextField("Email", text: $email)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .keyboardType(.emailAddress) // Set keyboard type for email
                        
                        SecureField("Password", text: $password) // SecureField for password input
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                    }
                }
                .padding(.top, 20)

                // Role Selection Buttons
                HStack(spacing: 10) {
                    Button(action: {
                        navigateToGymUser = true // Navigate to Gym User View
                    }) {
                        Text("Gym User")
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }

                    Button(action: {
                        navigateToGymCompany = true // Navigate to Gym Company View
                    }) {
                        Text("Gym Company")
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(Color.green)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                }
                .padding(.top, 10)

                // NavigationLinks for both views
                NavigationLink(destination: GymUserView(), isActive: $navigateToGymUser) {
                    EmptyView() // Invisible link that triggers navigation
                }

                NavigationLink(destination: GymCompanyView(), isActive: $navigateToGymCompany) {
                    EmptyView() // Invisible link that triggers navigation
                }

                Spacer()
            }
            .padding()
            .navigationTitle("Actions")
        }
    }
}

#Preview {
    SecondView()
}
