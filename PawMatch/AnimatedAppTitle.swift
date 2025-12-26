import SwiftUI

struct AnimatedAppTitle: View {
    @State private var reveal = false

    var body: some View {
        Text("PawMatch")
            .font(.system(size: 34, weight: .semibold, design: .rounded))
            .tracking(1.2)
            .foregroundStyle(.white)
            .opacity(reveal ? 1 : 0)
            .blur(radius: reveal ? 0 : 12)
            .offset(y: reveal ? 0 : -20)
            .animation(
                .easeOut(duration: 1.2).delay(0.4),
                value: reveal
            )
            .onAppear {
                reveal = true
            }
    }
}

