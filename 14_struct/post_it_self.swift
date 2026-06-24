//
//  post_it_self.swift
//  Swift 2025
//
//  Created by Jose Garcia on 24/06/26.
//

func postItNoteApp() {
    struct PostItNote {
        var message: String = "No message"

        mutating func updateMessage(message: String) {
            self.message = message
        }

        func printMessage() {
            print(message)
        }
    }

    var note = PostItNote()
    note.printMessage()
    note.updateMessage(message: "Hello, World!")
    note.printMessage()
}
