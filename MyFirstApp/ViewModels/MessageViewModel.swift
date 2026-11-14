import Foundation
import Observation

// ViewModel: holds the screen's state and logic.
// @Observable = when a property changes, any View reading it redraws.
@Observable
class MessageViewModel {
    var message = Message(text: nil)

    // What the View should show. Handles the nil case here, not in the View.
    var displayText: String {
        message.text ?? "Hello World"
    }

    func sayHi() {
        message.text = "Hi from the ViewModel!"
    }

    func reset() {
        message.text = nil
    }
}
