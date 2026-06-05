//
//  filtrarNegativos.swift
//  Swift 2025
//
//  Created by Jose Garcia on 05/06/26.
//

/*
 A data processing system will receive an array of random integers. It needs to filter any negative numbers and display the remaining positive numbers, if there are any.

 Implement this functionality using local functions.
 */

func filtrarNumeros(numeros: [Int]) -> [Int] {
    func filtrarNegativos(numeros: [Int]) -> [Int] {
        return numeros.filter { $0 >= 0 }
    }

    return filtrarNegativos(numeros: numeros)
}

func filtrarNumerosApp() {
    var valores: [Int] = []
    for _ in 1 ... 20 {
        valores.append(Int.random(in: -100 ... 5))
    }
    print("Valores originales: \(valores)")
    let valoresPositivos = filtrarNumeros(numeros: valores)
    if valoresPositivos.isEmpty {
        print("No hay valores positivos")
    } else {
        print("Valores positivos: \(valoresPositivos)")
    }
    print()
}
