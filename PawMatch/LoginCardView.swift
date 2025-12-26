import SwiftUI
import AuthenticationServices

struct LoginCardView: View {
    var body: some View {
        VStack(spacing: 14) {

            SignInWithAppleButton(
                .signIn,
                onRequest: { request in
                    request.requestedScopes = [.fullName, .email]
                },
                onCompletion: { result in
                    // Handle result later
                }
            )
            .signInWithAppleButtonStyle(.black)
            .frame(height: 50)
            .cornerRadius(12)

            Button("Continue with Email") {}
                .frame(maxWidth: .infinity)
                .frame(height: 50)
                .background(Color.white.opacity(0.9))
                .foregroundColor(.black)
                .cornerRadius(12)

            Button("Sign in with Google") {}
                .frame(maxWidth: .infinity)
                .frame(height: 50)
                .overlay(
                    RoundedRectangle(cornerRadius: 12)
                        .stroke(Color.white.opacity(0.8))
                )
                .foregroundColor(.white)

            Text("Terms • Privacy")
                .font(.footnote)
                .foregroundColor(.white.opacity(0.6))
        }
        .padding()
        .background(.ultraThinMaterial)
        .cornerRadius(20)
    }
}

