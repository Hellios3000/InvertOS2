
import SwiftUI

@main
struct InvertOSApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .rotationEffect(.degrees(180))
        }
    }
}
