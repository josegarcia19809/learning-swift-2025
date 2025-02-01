//
//  mutableDictionaries.swift
//  Swift 2025
//
//  Created by Jose Garcia on 01/02/25.
//

func mutableDictionaries() {
    var count = [1: "One", 2: "Two", 3: "Three"]
    print(count)
    
    count[4] = "Four" // Agregar
    count[2] = "Dos" // Modificar
    print(count)

    count.removeValue(forKey: 2)
    print(count)
    count.removeAll()
    print(count)
}

/*
 [3: "Three", 1: "One", 2: "Two"]
 [4: "Four", 1: "One", 3: "Three", 2: "Dos"]
 [4: "Four", 1: "One", 3: "Three"]
 [:]
 */
