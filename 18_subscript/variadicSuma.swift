//
//  variadicSuma.swift
//  Swift 2025
//
//  Created by Jose Garcia on 18/07/26.
//

func variadicSumaApp() {
    struct Suma {
        subscript(numeros: Int...) -> Int {
            return numeros.reduce(0, +)
        }
    }

    let suma = Suma()

    print(suma[1, 2, 3])
    print(suma[10, 20, 30, 40])
}
