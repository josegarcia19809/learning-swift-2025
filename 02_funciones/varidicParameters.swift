//
//  varidicParameters.swift
//  Swift 2025
//
//  Created by Jose Garcia on 05/06/26.
//

func calcularPromedio(_ valores: Double...) -> Double {
    guard valores.count > 0 else { return 0.0 }

    var suma = 0.0
    for valor in valores {
        suma += valor
    }
    return suma / Double(valores.count)
}

func calcularPromedioApp() {
    let promedio = calcularPromedio(2.0, 4.0, 6.0, 8.0)
    print("El promedio es \(promedio)")
}
