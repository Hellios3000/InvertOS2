
import SwiftUI

struct DynamicIslandView: View {
    @State private var showActions = false

    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 30)
                .fill(Color.gray.opacity(0.8))
            HStack {
                if showActions {
                    Button(action: {}) {
                        Image(systemName: "flashlight.on.fill")
                            .foregroundColor(.white)
                    }
                    Spacer()
                    Button(action: {}) {
                        Image(systemName: "gear")
                            .foregroundColor(.white)
                    }
                } else {
                    Text("●")
                        .foregroundColor(.white)
                        .font(.system(size: 24))
                }
            }
            .padding(.horizontal, 30)
        }
        .onTapGesture {
            withAnimation {
                showActions.toggle()
            }
        }
    }
}
