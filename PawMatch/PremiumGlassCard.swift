import SwiftUI

struct PremiumGlassCard<Content: View>: View {
    let dominantColor: Color
    let content: Content

    init(dominantColor: Color, @ViewBuilder content: () -> Content) {
        self.dominantColor = dominantColor
        self.content = content()
    }

    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 28)
                .fill(.ultraThinMaterial)

            RoundedRectangle(cornerRadius: 28)
                .fill(
                    LinearGradient(
                        colors: [
                            dominantColor.opacity(0.35),
                            dominantColor.opacity(0.12),
                            .clear
                        ],
                        startPoint: .topLeading,
                        endPoint: .bottomTrailing
                    )
                )
        }
        .overlay(
            RoundedRectangle(cornerRadius: 28)
                .stroke(.white.opacity(0.15), lineWidth: 0.5)
        )
        .shadow(color: dominantColor.opacity(0.25), radius: 30, y: 20)
        .overlay(content)
    }
}

