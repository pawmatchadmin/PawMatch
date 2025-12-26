import SwiftUI

struct AppIntroView: View {
    var onApple: () -> Void = {}
    var onGoogle: () -> Void = {}
    var onEmail: () -> Void = {}

    @State private var showTitle = false
    @State private var showButtons = false
    @State private var bgZoom = false

    var body: some View {
        ZStack {
            // Background image
            Image("introPets")
                .resizable()
                .scaledToFill()
                .scaleEffect(bgZoom ? 1.06 : 1.0)
                .ignoresSafeArea()
                .onAppear {
                    withAnimation(.easeOut(duration: 2.4)) {
                        bgZoom = true
                    }
                }

            // Dark overlay for readability
            LinearGradient(
                colors: [
                    Color.black.opacity(0.65),
                    Color.black.opacity(0.18),
                    Color.black.opacity(0.78)
                ],
                startPoint: .top,
                endPoint: .bottom
            )
            .ignoresSafeArea()

            VStack(spacing: 0) {
                // Title + subtitle
                VStack(spacing: 10) {
                    Text("PawMatch")
                        .font(.system(size: 46, weight: .heavy, design: .rounded))
                        .foregroundColor(.white)
                        .tracking(0.6)
                        .shadow(color: Color.black.opacity(0.35), radius: 10, x: 0, y: 6)

                    Text("For pet owners, by pet owners")
                        .font(.system(size: 16, weight: .semibold, design: .rounded))
                        .foregroundColor(Color.white.opacity(0.92))
                        .shadow(color: Color.black.opacity(0.25), radius: 8, x: 0, y: 4)
                }
                .padding(.top, 74)
                .opacity(showTitle ? 1 : 0)
                .offset(y: showTitle ? 0 : -18)
                .blur(radius: showTitle ? 0 : 6)

                Spacer()

                // Login buttons
                VStack(spacing: 12) {
                    PremiumButton(
                        title: "Continue with Apple",
                        systemImage: "applelogo",
                        style: .primary,
                        action: onApple
                    )

                    PremiumButton(
                        title: "Continue with Google",
                        systemImage: "g.circle",
                        style: .secondary,
                        action: onGoogle
                    )

                    PremiumButton(
                        title: "Continue with Email",
                        systemImage: "envelope.fill",
                        style: .secondary,
                        action: onEmail
                    )

                    Text("By continuing, you agree to our Terms and Privacy Policy.")
                        .font(.system(size: 12, weight: .medium))
                        .foregroundColor(Color.white.opacity(0.72))
                        .multilineTextAlignment(.center)
                        .padding(.top, 6)
                        .padding(.horizontal, 18)
                }
                .padding(.horizontal, 22)
                .padding(.bottom, 34)
                .opacity(showButtons ? 1 : 0)
                .offset(y: showButtons ? 0 : 24)
                .blur(radius: showButtons ? 0 : 8)
            }
        }
        .onAppear {
            withAnimation(.spring(response: 0.7, dampingFraction: 0.9).delay(0.15)) {
                showTitle = true
            }
            withAnimation(.spring(response: 0.7, dampingFraction: 0.92).delay(0.45)) {
                showButtons = true
            }
        }
    }
}

private struct PremiumButton: View {
    enum Style { case primary, secondary }

    let title: String
    let systemImage: String
    let style: Style
    let action: () -> Void

    var body: some View {
        Button(action: action) {
            HStack(spacing: 10) {
                Image(systemName: systemImage)
                    .font(.system(size: 18, weight: .semibold))
                Text(title)
                    .font(.system(size: 16, weight: .semibold))
                Spacer(minLength: 0)
            }
            .foregroundColor(foregroundColor)
            .padding(.vertical, 14)
            .padding(.horizontal, 16)
            .frame(maxWidth: .infinity)
            .background(backgroundView)
            .overlay(overlayStroke)
            .clipShape(RoundedRectangle(cornerRadius: 16, style: .continuous))
        }
        .buttonStyle(.plain)
        .shadow(
            color: Color.black.opacity(style == .primary ? 0.25 : 0.18),
            radius: style == .primary ? 16 : 12,
            x: 0,
            y: style == .primary ? 10 : 8
        )
    }

    private var foregroundColor: Color {
        switch style {
        case .primary: return .black
        case .secondary: return .white
        }
    }

    @ViewBuilder
    private var backgroundView: some View {
        switch style {
        case .primary:
            LinearGradient(
                colors: [
                    Color.white.opacity(0.95),
                    Color.white.opacity(0.78)
                ],
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )

        case .secondary:
            RoundedRectangle(cornerRadius: 16, style: .continuous)
                .fill(Color.white.opacity(0.14))
                .background(
                    RoundedRectangle(cornerRadius: 16, style: .continuous)
                        .fill(Color.black.opacity(0.18))
                )
        }
    }

    private var overlayStroke: some View {
        RoundedRectangle(cornerRadius: 16, style: .continuous)
            .strokeBorder(Color.white.opacity(style == .primary ? 0.22 : 0.28), lineWidth: 1)
    }
}

