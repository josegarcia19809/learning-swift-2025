//
//  immutableArray.swift
//  Swift 2025
//
//  Created by Jose Garcia on 26/01/25.
//

func immutableArray() {
    let animals: Array<String> = ["cat", "dog", "mouse"]
    print(animals)

    let noAnimals: Array<String> = []
    print(noAnimals)

    let emptyArray = Array<String>()
    print(emptyArray)

    let someNumbers = Array(repeating: 3, count: 6)
    print(someNumbers)

    let matrix = [
        [0, 1, 2],
        [3, 4, 5],
        [6, 7, 8]
    ]
    print(matrix)

    let colors = ["red", "green", "blue"]
    print(colors)
    imprimirLinea()
    print(colors[1])

    print(colors.first!)
    print(colors.last!)
    print(colors.count)
}
