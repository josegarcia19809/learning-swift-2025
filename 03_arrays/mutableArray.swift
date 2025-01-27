//
//  mutableArray.swift
//  Swift 2025
//
//  Created by Jose Garcia on 26/01/25.
//

func mutableArray() {
    var animals = ["cat", "dog", "rabbit"]
    print(animals)

    animals[2] = "parrot"
    print(animals)

    animals.remove(at: 2)
    print(animals)

    animals.append("horse")
    animals += ["mouse", "pig"]
    print(animals)

    animals.insert("lion", at: 1)
    print(animals)

    animals.insert(contentsOf: ["dolphin", "whale"], at: 3)
    print(animals)

    let colors1 = ["red", "green"]
    let colors2 = ["blue", "yellow"]
    let colors3 = colors1 + colors2
    print(colors3)
}

/**
 ["cat", "dog", "rabbit"]
 ["cat", "dog", "parrot"]
 ["cat", "dog"]
 ["cat", "dog", "horse", "mouse", "pig"]
 ["cat", "lion", "dog", "horse", "mouse", "pig"]
 ["cat", "lion", "dog", "dolphin", "whale", "horse", "mouse", "pig"]
 */
