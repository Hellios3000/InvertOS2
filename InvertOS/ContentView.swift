
import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            VStack(spacing: 20) {
                Spacer()
                HStack(spacing: 30) {
                    AppIconView(label: "Mail", systemName: "envelope")
                    AppIconView(label: "Photos", systemName: "photo")
                    AppIconView(label: "Music", systemName: "music.note")
                }
                Spacer()
                VStack(spacing: 10) {
                    HStack {
                        Text("85%")
                            .foregroundColor(.green)
                        Spacer()
                        Text("21:43")
                            .foregroundColor(.white)
                    }
                    .padding(.horizontal, 30)
                    DynamicIslandView()
                        .frame(height: 50)
                        .padding(.horizontal, 80)
                }
                .padding(.bottom, 20)
            }
            .padding()
        }
    }
}
