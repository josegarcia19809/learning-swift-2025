//
//  envio_paquete.swift
//  Swift 2025
//
//  Created by Jose Garcia on 25/02/26.
//

import Foundation

func envioPaquete() {
    // Realiza un programa que pida el peso de un paquete en kilogramos y el costo por kilogramo.
    print("Envío de un paquete")
    print("Ingresa el peso máximo de un paquete en kilogramos: ", terminator: "")
    let peso = Float(readLine() ?? "0.0") ?? 0.0

    print("Ingresa el costo por kilogramo: ", terminator: "")
    let costoPorKg = Float(readLine() ?? "0.0") ?? 0.0

    let costoTotal: Float = peso * costoPorKg
    let cargoAdicional: Float = costoTotal * 0.10

    let totalFinal: Float = costoTotal + cargoAdicional
    if totalFinal > 1500 {
        print("Envío costoso")
    }

    print("Costo total: $\(costoTotal)")
    print("Cargo adicional: $\(cargoAdicional)")
    print("Total final: $\(totalFinal)")

    imprimirLinea()
}
