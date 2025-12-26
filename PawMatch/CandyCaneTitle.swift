import SwiftUI

struct CandyCaneTitle: View {
    @State private var wiggle = false

    var body: some View {
        Text("PawMatch")
            .font(.system(size: 36, weight: .bold, design: .rounded))
            .foregroundStyle(
                LinearGradient(
                    colors: [.red, .white, .red],
                    startPoint: .top,
                    endPoint: .bottom
                )
            )
            .rotationEffect(.degrees(wiggle ? -2 : 2))
            .onAppear {
                withAnimation(
                    .easeInOut(duration: 0.8)
                    .repeatForever(autoreverses: true)
                ) {
                    wiggle.toggle()
                }
            }
    }
}

