//
//  edadesPersonas.swift
//  Swift 2025
//
//  Created by Jose Garcia on 24/03/26.
//

func edadesPersonas() {
    print("Edades de personas 🙅‍♀️")

    var edades: [Int] = Array(repeating: 0, count: 10)

    var sumaEdades = 0
    var mayores = 0
    var menores = 0
    for i in 0 ..< edades.count {
        print("Edad de persona \(i + 1): ", terminator: "")
        edades[i] = Int(readLine() ?? "0") ?? 0
        sumaEdades += edades[i]
        if edades[i] >= 18 {
            mayores += 1
        }
        else{
            menores += 1
        }
    }


    print("Suma de edades: \(sumaEdades)")
    print("Mayores \(mayores)")
    print("Menores \(menores)")
    for i in 0 ..< edades.count {
        print(edades[i], terminator: " ")
    }
    print()
}
