//
//  forLoopsWhere.swift
//  Swift 2025
//
//  Created by Jose Garcia on 19/02/25.
//

func forLoopsWhere() {
    let languages: [String] = ["Swift", "Objective-C", "C++", "Java", "Python"]

    for language in languages where language != "Swift" {
        print("\(language) is a cool programming language!")
    }

    imprimirLinea()

    for _ in languages {
        print("My favourite language")
    }
    imprimirLinea()

    print("Numbers divisible by 13:")
    for i in stride(from: 0, to: 1000, by: 13) {
        print("\(i)\t", terminator: "")
    }
}
