//
//  PostItNote.swift
//  Swift 2025
//
//  Created by Jose Garcia on 25/06/26.
//

func PostItNoteApp() {
    struct PostItNote {
        var message: String
        static var color = "yellow"

        static func provideInstructions() {
            print("use the \(color) Post-It Note")
        }
    }

    print(PostItNote.color)
    PostItNote.provideInstructions()
}
