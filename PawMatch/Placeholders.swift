import SwiftUI

struct MarketplacePlaceholderView: View {
    var body: some View {
        VStack(spacing: 16) {
            Image(systemName: "cart.fill")
                .font(.system(size: 48))
                .foregroundStyle(.green)

            Text("Marketplace")
                .font(.title.bold())

            Text("Buy and sell pet supplies.\nComing soon 🎄")
                .multilineTextAlignment(.center)
                .foregroundStyle(.secondary)
        }
        .padding()
        .navigationTitle("Marketplace")
    }
}

struct AdoptPlaceholderView: View {
    var body: some View {
        VStack(spacing: 16) {
            Image(systemName: "pawprint.fill")
                .font(.system(size: 48))
                .foregroundStyle(.orange)

            Text("Adopt a Pet")
                .font(.title.bold())

            Text("Browse adoptable pets.\nComing soon 🐾")
                .multilineTextAlignment(.center)
                .foregroundStyle(.secondary)
        }
        .padding()
        .navigationTitle("Adopt a Pet")
    }
}

