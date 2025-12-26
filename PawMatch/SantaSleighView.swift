import SwiftUI

struct SantaSleighView: View {
    @State private var offsetX: CGFloat = -300

    var body: some View {
        Image(systemName: "gift.fill")
            .font(.largeTitle)
            .foregroundColor(.white)
            .offset(x: offsetX)
            .onAppear {
                withAnimation(
                    .linear(duration: 8)
                    .repeatForever(autoreverses: false)
                ) {
                    offsetX = 300
                }
            }
    }
}

