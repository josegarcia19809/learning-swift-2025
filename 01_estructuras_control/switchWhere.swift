//
//  switchWhere.swift
//  Swift 2025
//
//  Created by Jose Garcia on 04/02/25.
//

func switchWhere() {
    let month = 4
    let mercuryInRetrograde = Bool.random()

    switch month {
    case 4 where mercuryInRetrograde: print("pretty cool")
    case 4 where !mercuryInRetrograde: print("not cool")
    default: print("idk")
    }

    let number = Int.random(in: 0..<100)
    switch number {
    case let x where (0...9).contains(number): print("Single digit \(x)")
    case let y where (10..<100).contains(number): print("Double digit \(y)")
    default:
        print("idk")
    }
}
