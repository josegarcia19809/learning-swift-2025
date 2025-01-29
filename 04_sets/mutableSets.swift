//
//  mutableSets.swift
//  Swift 2025
//
//  Created by Jose Garcia on 29/01/25.
//

func mutableSets() {
    var numbers: Set<Int> = [1, 3, 5, 3, 7]
    print(numbers)

    numbers.insert(2)
    print(numbers)

    numbers.remove(3)
    print(numbers)

    let numbers2 = [4, 5, 6]
    let allNumbers = numbers + numbers2 // allNumbers ya es un Array
    print(allNumbers)

    print(type(of: allNumbers))
}
