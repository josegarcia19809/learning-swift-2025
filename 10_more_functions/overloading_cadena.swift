//
//  overloading_cadena.swift
//  Swift 2025
//
//  Created by Jose Garcia on 24/12/25.
//

import Foundation

/*
 Create a function that takes a message and prints out the length of the message.
 Overload the function to take an integer, and print out a string of the length of that integer.
 The content of the string is not important.

 */

func displayLengthMessage(_ message: String) {
    print("The length of the message is \(message.count)")
}

func displayLengthMessage(_ length: Int) {
    print("The length of the integer is \(String(length).count)")
}

func displayLengthMessageApp() {
    displayLengthMessage("Hello World")
    displayLengthMessage(12345)
}
