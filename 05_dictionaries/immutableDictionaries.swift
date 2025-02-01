//
//  immutableDictionaries.swift
//  Swift 2025
//
//  Created by Jose Garcia on 01/02/25.
//

func immutableDictionaries() {
    let count: [Int: String] = [1: "One", 2: "Two", 3: "Three"]
    print(count)

    let emptyDictionary1: [Int: String] = [:]
    print(emptyDictionary1)

    let emptyDictionary2: Dictionary<Int, String> = [:]
    print(emptyDictionary2)

    let emptyDictionary3 = Dictionary<Int, String>();
    print(emptyDictionary3)

    print(count[2]!)
    print(count.keys)
    print(type(of: count.keys))
    print(count.values)
    print(type(of: count.values))
}

/*
 [2: "Two", 1: "One", 3: "Three"]
 [:]
 [:]
 [:]
 Two
 [2, 1, 3]
 Keys
 ["Two", "One", "Three"]
 Values
 */
