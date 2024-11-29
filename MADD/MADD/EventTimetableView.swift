// EventTimetableView.swift
import SwiftUI

struct Event: Identifiable {
    var id = UUID() // Unique identifier for each event
    var name: String
    var date: String
    var time: String
}

struct EventTimetableView: View {
    // Sample data for events
    let events = [
        Event(name: "Yoga Class", date: "2024-11-30", time: "9 AM"),
        Event(name: "Strength Training", date: "2024-11-30", time: "10 AM"),
        Event(name: "Zumba", date: "2024-11-30", time: "11 AM"),
        Event(name: "Pilates", date: "2024-11-30", time: "12 PM"), // New event
        Event(name: "HIIT Workout", date: "2024-11-30", time: "1 PM") // New event
    ]

    var body: some View {
        VStack(spacing: 10) {
            Text("Event Timetable")
                .font(.largeTitle)
                .padding()

            List(events) { event in
                HStack {
                    VStack(alignment: .leading) {
                        Text(event.name)
                            .font(.headline)
                            .foregroundColor(.blue) // Highlight the event name
                        Text("\(event.date) at \(event.time)")
                            .font(.subheadline)
                            .foregroundColor(.gray)
                    }
                    Spacer()
                    NavigationLink(destination: AppointmentView(eventName: event.name)) { // Navigate to AppointmentView
                        Text("Select")
                            .padding(10)
                            .background(Color.blue.opacity(0.2))
                            .foregroundColor(.blue)
                            .cornerRadius(5)
                    }
                }
                .padding()
            }
        }
        .padding()
        .navigationTitle("Timetable")
    }
}

#Preview {
    EventTimetableView()
}
