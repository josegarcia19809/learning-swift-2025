//
//  consumo_energia.swift
//  Swift 2025
//
//  Created by Jose Garcia on 25/02/26.
//

import Foundation

func consumoEnergiaElectrica() {
    // Realiza un programa que pida los kilowatts consumidos en el mes y el costo por kilowatt.

    print("Consumo de energía eléctrica ⚡️")

    print("Dime los kilowatts consumidos en el mes: ", terminator: "")
    let kilowattsConsumidos = Double(readLine()!)!

    print("Dime el costo por kilowatt: ", terminator: "")
    let costoPorKilowatt = Double(readLine()!)!

    let CARGO_FIJO = 120.00

    let subTotal: Double = kilowattsConsumidos * costoPorKilowatt
    let pagoTotal: Double = subTotal + CARGO_FIJO

    if pagoTotal > 2500 {
        print("Alto consumo de energía")
    }

    print("Pago por consumo: $\(subTotal) pesos")
    print("Cargo fijo: $\(CARGO_FIJO) pesos")
    print("Total a pagar: $\(pagoTotal) pesos")
    
    imprimirLinea()
}
