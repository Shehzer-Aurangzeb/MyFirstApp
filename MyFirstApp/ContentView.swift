import SwiftUI

// View: only draws. Reads from the ViewModel, sends taps to it.
struct ContentView: View {
    @State private var viewModel = MessageViewModel()

    var body: some View {
        VStack(spacing: 20) {
            Text(viewModel.displayText)
                .font(.largeTitle)
                .foregroundStyle(.red)

            Button("Say Hi") {
                viewModel.sayHi()
            }

            Button("Reset") {
                viewModel.reset()
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
