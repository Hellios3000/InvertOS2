
import SwiftUI

struct AppIconView: View {
    var label: String
    var systemName: String

    var body: some View {
        VStack {
            Image(systemName: systemName)
                .resizable()
                .frame(width: 40, height: 40)
                .foregroundColor(.white)
                .padding()
                .background(Color.gray.opacity(0.3))
                .cornerRadius(16)
            Text(label)
                .foregroundColor(.white)
                .font(.caption)
        }
    }
}
