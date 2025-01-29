//
//  immutableSets.swift
//  Swift 2025
//
//  Created by Jose Garcia on 29/01/25.
//

func immutableSets() {
    let numbers: Set<Int> = [1, 3, 5, 3, 7]
    print(numbers)

    let numbers2: Set<Int> = []
    print(numbers2)

    let numbers3 = Set<Int>()
    print(numbers3)

    print(numbers.first ?? -1) // Primer elemento
    print(numbers.count)
}
