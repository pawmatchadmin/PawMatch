import SwiftUI

struct RootView: View {
    @AppStorage("isLoggedIn") private var isLoggedIn = false

    var body: some View {
        if isLoggedIn {
            MainAppView()
        } else {
            AppIntroView(
                onApple: { isLoggedIn = true },
                onGoogle: { isLoggedIn = true },
                onEmail: { isLoggedIn = true }
            )
        }
    }
}

