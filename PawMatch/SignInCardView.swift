import SwiftUI

struct SignInCardView: View {
    var onContinue: () -> Void

    var body: some View {
        VStack(spacing: 22) {
            Text("Welcome to PawMatch")
                .font(.largeTitle)
                .fontWeight(.semibold)

            Text("Find pets that truly match your lifestyle.")
                .multilineTextAlignment(.center)
                .foregroundStyle(.secondary)

            Button {
                onContinue()
            } label: {
                Label("Continue with Apple", systemImage: "applelogo")
                    .frame(maxWidth: .infinity)
            }
            .buttonStyle(.borderedProminent)

            Button("Continue with Email") {
                onContinue()
            }
            .buttonStyle(.bordered)
        }
        .padding(32)
    }
}

