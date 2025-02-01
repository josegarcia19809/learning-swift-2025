//
//  dictionaryFunctions.swift
//  Swift 2025
//
//  Created by Jose Garcia on 01/02/25.
//

func dictionaryFunctions() {
    let conteo: [Int: String] = [1: "One", 2: "Two", 3: "Three"]
    print(conteo.count)
    print(conteo.isEmpty)
    print(conteo.first!)
    print(conteo.randomElement()!)
}

/*
 3
 false
 (key: 1, value: "One")
 (key: 2, value: "Two")
 */
