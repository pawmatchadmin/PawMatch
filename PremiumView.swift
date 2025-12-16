import SwiftUI

struct PremiumView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 24) {

                VStack(spacing: 8) {
                    Image(systemName: "star.fill")
                        .font(.system(size: 40))
                        .foregroundColor(.yellow)

                    Text("PawMatch Premium")
                        .font(.largeTitle)
                        .fontWeight(.bold)

                    Text("Unlock smarter matches and powerful tools.")
                        .multilineTextAlignment(.center)
                        .foregroundColor(.secondary)
                }

                VStack(alignment: .leading, spacing: 16) {
                    premiumFeatureRow(
                        icon: "sparkles",
                        title: "AI Matching",
                        description: "Personality-based pet matches powered by AI."
                    )

                    premiumFeatureRow(
                        icon: "bolt.fill",
                        title: "Boosted Listings",
                        description: "Get more visibility for your pets and items."
                    )

                    premiumFeatureRow(
                        icon: "heart.fill",
                        title: "Unlimited Favorites",
                        description: "Save and track as many pets as you want."
                    )
                }

                Button {
                    // StoreKit purchase flow later
                } label: {
                    Text("Upgrade to Premium")
                        .fontWeight(.semibold)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(12)
                }

                Text("You can restore purchases at any time.")
                    .font(.caption)
                    .foregroundColor(.secondary)
            }
            .padding()
        }
        .navigationTitle("Premium")
    }

    private func premiumFeatureRow(icon: String, title: String, description: String) -> some View {
        HStack(alignment: .top, spacing: 12) {
            Image(systemName: icon)
                .foregroundColor(.blue)

            VStack(alignment: .leading, spacing: 4) {
                Text(title)
                    .fontWeight(.semibold)

                Text(description)
                    .font(.caption)
                    .foregroundColor(.secondary)
            }
        }
    }
}