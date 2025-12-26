import SwiftUI

struct SmileUnderline: View {
    var body: some View {
        Path { path in
            path.move(to: CGPoint(x: 0, y: 6))
            path.addQuadCurve(
                to: CGPoint(x: 120, y: 6),
                control: CGPoint(x: 60, y: 14)
            )
        }
        .stroke(
            Color.white.opacity(0.75),
            style: StrokeStyle(lineWidth: 2, lineCap: .round)
        )
        .frame(width: 120, height: 16)
    }
}

