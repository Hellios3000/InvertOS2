import SwiftUI

struct AppIconView: View {
    let systemName: String

    var body: some View {
        Button(action: {
            // Пока ничего не делаем
            print("Tapped \(systemName)")
        }) {
            Image(systemName: systemName)
                .font(.system(size: 40))
                .foregroundColor(.white)
        }
    }
}
