import SwiftUI

struct DynamicIslandView: View {
    @State private var isExpanded = false

    var body: some View {
        HStack {
            // Часть острова
            RoundedRectangle(cornerRadius: 10)
                .fill(Color.gray)
                .frame(width: 40, height: 10)
                .overlay(
                    Circle()
                        .fill(Color.red)
                        .frame(width: 8, height: 8)
                )
                .onTapGesture {
                    withAnimation {
                        isExpanded.toggle()
                    }
                }

            if isExpanded {
                HStack(spacing: 20) {
                    Button(action: {
                        // Фонарик
                        print("Flashlight tapped")
                    }) {
                        Image(systemName: "flashlight.on.fill")
                            .font(.system(size: 20))
                            .foregroundColor(.white)
                    }

                    Button(action: {
                        // Настройки
                        print("Settings tapped")
                    }) {
                        Image(systemName: "gear")
                            .font(.system(size: 20))
                            .foregroundColor(.white)
                    }
                }
                .transition(.move(edge: .trailing))
            }
        }
        .padding()
    }
}
