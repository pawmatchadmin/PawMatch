import SwiftUI

struct AIMatchingView: View {
    var body: some View {
        if PremiumManager.shared.isPremium {
            premiumView
        } else {
            paywallView
        }
    }

    private var premiumView: some View {
        VStack(spacing: 12) {
            Text("AI Matching")
                .font(.title)
            Text("Advanced personality-based pet matching.")
                .multilineTextAlignment(.center)
        }
        .padding()
    }

    private var paywallView: some View {
        VStack(spacing: 16) {
            Text("AI Matching is Premium")
                .font(.title2)
                .fontWeight(.semibold)

            Text("Upgrade to Premium to unlock AI-powered pet matching.")
                .multilineTextAlignment(.center)

            Button("Unlock Premium") {
                // StoreKit integration later
            }
        }
        .padding()
    }
}