//
//  setColors.swift
//  Swift 2025
//
//  Created by Jose Garcia on 29/01/25.
//

/*
 Create an empty set of String colors
 Add three colors.
 Remove one.
 Print out the result
 */

func setColors() {
    var colors: Set<String> = ["red", "green", "blue", "yellow"]
    print(colors)

    colors.insert("black")
    colors.insert("brown")
    colors.insert("white")
    print(colors)

    colors.remove("red")
    print(colors)
}
