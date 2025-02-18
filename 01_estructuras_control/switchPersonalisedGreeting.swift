//
//  switchPersonalisedGreeting.swift
//  Swift 2025
//
//  Created by Jose Garcia on 17/02/25.
//

/*
 Ask the user to input their name.
 Based on the first letter of their name, print out a personalised greeting
 • for the first 3 letters of the alphabet,
 • a different one for the next 5 letters,
 • and a third message for the rest
 */
func switchPersonalisedGreeting() {
    print("Enter your name: ")
    let name = readLine() ?? ""

    switch name.first?.lowercased() ?? " " {
    case "a", "b", "c":
        print("Hello, \(name)!")
    case "d", "e", "f", "g", "h":
        print("Good day, \(name)!")
    default:
        print("Hello \(name)! How are you?")
    }

    let firstLetter = name.capitalized.first
    guard let firstLetter = firstLetter else {
        return
    }
    switch firstLetter {
    case "A", "B", "C":
        print("Hello, \(name)!")
    case "D", "E", "F", "G", "H":
        print("Good day, \(name)!")
    default:
        print("Hello \(name)! How are you?")
    }
}
