//
//  nilCustomGreeting.swift
//  Swift 2025
//
//  Created by Jose Garcia on 18/12/25.
//

import Foundation

func customGreeting(name: String)->String? {
    if let first = name.first {
        switch first {
        case "A"..."Z":
            return "Hello, \(name)"
        case "a"..."z":
            return "Hi, \(name)"
        default:
            return nil
        }
    }else {
        return nil
    }
}

func customGreetingPractice(input: String){
    print(customGreeting(name: input) ?? "Invalid input")
}
