import SwiftUI

struct ThirdView: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Welcome to the Third Page!")
                .font(.largeTitle)
                .padding()
            
            Text("This is where you can add more functionality.")
                .font(.subheadline)
                .padding()

            // Additional UI elements can be added here
        }
        .padding()
        .navigationTitle("Third Page")
    }
}

#Preview {
    ThirdView()
}
