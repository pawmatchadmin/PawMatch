import SwiftUI

struct HomeButton: View {
    let title: String
    let icon: String
    let color: Color

    var body: some View {
        HStack(spacing: 14) {
            Image(systemName: icon)
                .font(.system(size: 22, weight: .bold))
                .foregroundColor(.white)

            Text(title)
                .font(.headline)
                .foregroundColor(.white)

            Spacer()
        }
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 16)
                .fill(color.opacity(0.85))
                .shadow(radius: 5)
        )
    }
}
