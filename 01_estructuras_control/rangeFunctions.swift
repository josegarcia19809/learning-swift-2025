//
//  rangeFunctions.swift
//  Swift 2025
//
//  Created by Jose Garcia on 02/02/25.
//

func rangeFunctions() {
    let input = Int.random(in: 0...200)
    print(input)
    if 0...9 ~= input { // equivalente a (0...9).contains(input)
        print("Single digit")
    } else if (10...99).contains(input) {
        print("Double digit")
    } else {
        print("More digits")
    }

    imprimirLinea()
    let animals = ["cat", "dog", "horse", "fish", "crocodile", "bear"]
    print(animals[2..<5])

    let r1 = (1...100).randomElement()!
    print(r1)

    let r2 = Int.random(in: 1...100)
    print(r2)

    let r3 = Float.random(in: 0...1)
    print(r3)

    let r4 = 7..<10
    print(r4)
    print(r4.first!)
    print(r4.last!)
    print(r4.lowerBound)
    print(r4.upperBound)

    imprimirLinea()
    print(r4.isEmpty)
    print(r4.count)
    print(r4.randomElement()!)
    print(r4.shuffled())


}

/*
 Nota:

..< define un rango semiabierto, lo que significa que incluye el valor inferior (7),
 pero excluye el superior (10).
first! y last! son opcionales forzados, ya que un rango vacío (7..<7) no tendría valores
 y podría causar un error.
 */
