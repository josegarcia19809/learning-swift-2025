//
//  rangeCats.swift
//  Swift 2025
//
//  Created by Jose Garcia on 02/02/25.
//

/*
 A lady has cats.
 1 to 3 -> few cats
 4 to 6 → several cats
 7 or more → many cats

 Ask the user how many cats they have, then print the appropriate text.
 */
func rangeCats() {
    let cats = Int.random(in: 1...10)
    print("Cats: \(cats)")

    if (1...3).contains(cats) {
        print("Few cats")
    } else if (4...6).contains(cats) {
        print("Several cats")
    } else {
        print("Many cats")
    }
}
