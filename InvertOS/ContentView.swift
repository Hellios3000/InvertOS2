import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.black.edgesIgnoringSafeArea(.all)
            VStack {
                // Псевдо-статус-бар
                HStack {
                    Text("85%")
                    Spacer()
                    Text("21:43")
                }
                .foregroundColor(.white)
                .padding()

                Spacer()

                // Три центральные иконки
                HStack(spacing: 40) {
                    AppIconView(systemName: "envelope")
                    AppIconView(systemName: "photo")
                    AppIconView(systemName: "music.note")
                }

                Spacer()

                // Динамический остров внизу
                DynamicIslandView()
            }
            .rotationEffect(.degrees(180))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
