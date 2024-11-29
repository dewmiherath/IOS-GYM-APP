// AppointmentView.swift
import SwiftUI

struct AppointmentView: View {
    var eventName: String // The name of the selected event
    
    @State private var appointmentDate: Date = Date() // Default to current date
    @State private var selectedTime: String = "09:00 AM" // Default time
    let timeOptions = ["09:00 AM", "10:00 AM", "11:00 AM", "12:00 PM", "01:00 PM"] // Predefined time slots

    var body: some View {
        VStack(spacing: 5) { // Reduced spacing between elements
            Text("Schedule Appointment for \(eventName)")
                .font(.largeTitle)
                .padding(.top) // Keep top padding for the title

            // Date Picker for selecting appointment date
            DatePicker("Select Date", selection: $appointmentDate, displayedComponents: .date)
                .datePickerStyle(GraphicalDatePickerStyle())
                .padding(.horizontal) // Add horizontal padding to align with other elements

            // Picker for selecting appointment time
            Picker("Select Time", selection: $selectedTime) {
                ForEach(timeOptions, id: \.self) { time in
                    Text(time).tag(time)
                }
            }
            .pickerStyle(MenuPickerStyle()) // You can change this style as needed
            .padding(.horizontal) // Add horizontal padding to align with other elements

            HStack(spacing: 10) {
                // Confirm Appointment Button
                Button(action: {
                    confirmAppointment()
                }) {
                    Text("Confirm Appointment")
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.green)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }

                // Delete Appointment Button
                Button(action: {
                    deleteAppointment()
                }) {
                    Text("Delete Appointment")
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.red)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
            }
            .padding(.top, 10) // Adjust top padding for buttons

            Spacer()
        }
        .padding()
        .navigationTitle("Appointment")
    }

    private func confirmAppointment() {
        print("Appointment confirmed for \(eventName) on \(appointmentDate.formatted()) at \(selectedTime)")
    }

    private func deleteAppointment() {
        print("Appointment for \(eventName) deleted.")
    }
}

#Preview {
    AppointmentView(eventName: "Yoga Class") // Example for preview
}
