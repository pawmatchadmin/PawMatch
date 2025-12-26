import SwiftUI

struct AIMatchingView: View {
    var body: some View {
        VStack {
            Text("AI Pet Matching")
                .font(.largeTitle)
                .bold()
                .padding(.bottom, 10)

            Text("Smart recommendations coming soon.")
                .foregroundColor(.gray)

            Spacer()
        }
        .padding()
        .navigationTitle("AI Matching")
        .navigationBarTitleDisplayMode(.inline)
    }
}

