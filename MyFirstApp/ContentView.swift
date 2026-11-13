import SwiftUI
import Playgrounds

struct ContentView: View {
    var message: String? = nil
    
    
    var body: some View {
        Text(getMessage())
            .font(.largeTitle).foregroundStyle(.red)
            .padding()

    }
    
    func getMessage() -> String {
        if message != nil {
            return message!
        }
        return "Hello World"
    }
}

#Preview {
    ContentView()
}

#Playground {
    _ = 1 + 2
}
