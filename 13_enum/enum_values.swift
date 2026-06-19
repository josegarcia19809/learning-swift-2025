//
//  enum_values.swift
//  Swift 2025
//
//  Created by Jose Garcia on 19/06/26.
//

enum Seat {
    case sofa(Int, Int)
    case chair(Bool)
    case stool(Int)
}

enum Weekday: Int {
    case monday = 1, tuesday, wednesday, thursday, friday, saturday, sunday
}

func enumValuesApp() {
    let seating: [Seat] = [.sofa(10, 25), .chair(true), .stool(120)]

    switch seating.randomElement() {
    case let .sofa(depth, width): print("Sofa con width \(width) and depth \(depth)")
    case let .chair(isComfortable): isComfortable ? print("Comfortable chair") : print("Uncomfortable chair")
    case let .stool(height): print("Stool with height \(height)")
    default: return
    }

    print(Weekday.saturday)
    print(Weekday.saturday.rawValue)
    print(Weekday(rawValue: 5)!)
}
