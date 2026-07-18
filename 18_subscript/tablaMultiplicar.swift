//
//  tablaMultiplicar.swift
//  Swift 2025
//
//  Created by Jose Garcia on 18/07/26.
//

func tablaMultiplicarApp() {
    struct TablaMultiplicar {
        let multiplicar: Int

        subscript(indice: Int) -> Int {
            return multiplicar * indice
        }
    }

    let tabla = TablaMultiplicar(multiplicar: 9)
    print(tabla[6])
    print(tabla[8])
    print(tabla[10])
}
