import SwiftUI

struct MainAppView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem { Label("Home", systemImage: "house.fill") }

            BrowseView()
                .tabItem { Label("Browse", systemImage: "magnifyingglass") }

            MarketView()
                .tabItem { Label("Market", systemImage: "bag.fill") }

            MessagesView()
                .tabItem { Label("Messages", systemImage: "bubble.left.and.bubble.right.fill") }

            ProfileView()
                .tabItem { Label("Profile", systemImage: "person.crop.circle.fill") }
        }
    }
}

private struct HomeView: View {
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading, spacing: 16) {
                Text("Find your next best friend")
                    .font(.title2)
                    .fontWeight(.bold)

                RoundedRectangle(cornerRadius: 18, style: .continuous)
                    .fill(.ultraThinMaterial)
                    .frame(height: 140)
                    .overlay(
                        VStack(alignment: .leading, spacing: 8) {
                            Text("Quick Search")
                                .font(.headline)
                            Text("Location • Breed • Age • Size")
                                .foregroundStyle(.secondary)
                            Spacer()
                            Button("Browse nearby pets") { }
                                .buttonStyle(.borderedProminent)
                        }
                        .padding()
                    )

                RoundedRectangle(cornerRadius: 18, style: .continuous)
                    .fill(.ultraThinMaterial)
                    .frame(height: 120)
                    .overlay(
                        HStack {
                            VStack(alignment: .leading, spacing: 6) {
                                Text("AI Match (Pro)")
                                    .font(.headline)
                                Text("Get personality-based matches.")
                                    .foregroundStyle(.secondary)
                            }
                            Spacer()
                            Button("Try") { }
                                .buttonStyle(.bordered)
                        }
                        .padding()
                    )

                Spacer()
            }
            .padding()
            .navigationTitle("PawMatch")
        }
    }
}

private struct BrowseView: View {
    var body: some View {
        NavigationStack {
            VStack(spacing: 12) {
                Text("Browse pets")
                    .font(.title3)
                    .fontWeight(.semibold)
                Text("Filters, distance, and categories go here.")
                    .foregroundStyle(.secondary)
                Spacer()
            }
            .padding()
            .navigationTitle("Browse")
        }
    }
}

private struct MarketView: View {
    var body: some View {
        NavigationStack {
            VStack(spacing: 12) {
                Text("Marketplace")
                    .font(.title3)
                    .fontWeight(.semibold)
                Text("Free items, for sale, and promoted listings go here.")
                    .foregroundStyle(.secondary)
                Spacer()
            }
            .padding()
            .navigationTitle("Market")
        }
    }
}

private struct MessagesView: View {
    var body: some View {
        NavigationStack {
            VStack(spacing: 12) {
                Text("Messages")
                    .font(.title3)
                    .fontWeight(.semibold)
                Text("Chat threads will appear here.")
                    .foregroundStyle(.secondary)
                Spacer()
            }
            .padding()
            .navigationTitle("Messages")
        }
    }
}

private struct ProfileView: View {
    var body: some View {
        NavigationStack {
            VStack(spacing: 12) {
                Text("Profile")
                    .font(.title3)
                    .fontWeight(.semibold)
                Text("Saved items, listings, settings, premium.")
                    .foregroundStyle(.secondary)
                Spacer()
            }
            .padding()
            .navigationTitle("Profile")
        }
    }
}
