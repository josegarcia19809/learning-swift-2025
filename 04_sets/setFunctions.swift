//
//  setFunctions.swift
//  Swift 2025
//
//  Created by Jose Garcia on 30/01/25.
//

func setFunctions() {
    let colors: Set<String> = ["red", "green", "blue"]
    print(colors.isEmpty)
    print(colors.contains("red"))
    print(colors.contains("yellow"))

    let sortedColors = colors.sorted()
    print(sortedColors)
    print(type(of: sortedColors)) // Array<String>

    print(colors.min()!)
    print(colors.max()!)
}

/*
 false
 true
 false
 ["blue", "green", "red"]
 Array<String>
 blue
 red
 */
