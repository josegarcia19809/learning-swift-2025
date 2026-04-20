//
//  perdidas_casa.swift
//  Swift 2025
//
//  Created by Jose Garcia on 20/04/26.
//

func perdidasCasa() {
    print("El Misterio de las Pérdidas Fantasma")

    let perdidaInicial = 3000.0
    var precios: [Double] = Array(repeating: 0.0, count: 5)

    for i in (1 ... 5).reversed() {
        let perdida: Double = perdidaInicial - 300.0 * Double(i - 5)
        precios[i - 1] = perdida
    }

    for (i, precio) in precios.enumerated().reversed() {
        print("\(i + 1) \t\t\t\(precio)")
    }
}
