//
//  tienda_refrescos.swift
//  Swift 2025
//
//  Created by Jose Garcia on 04/03/26.
//

import Foundation

func tiendaRefrescos() {
    print("¡Bienvenido a la tienda de refrescos!")

    let costoRefresco: Double = 20

    print("Dime cuántos refrescos compraste: ", terminator: "")
    let cantidadRefrescos = Int(readLine()!)!

    let total = Double(cantidadRefrescos) * costoRefresco

    print("El total de tu compra es: $\(total) pesos")

    if total != 100 {
        print("El total no coincide con la promoción especial.")
    } else {
        print("¡Exacto! Obtienes un refresco gratis.")
    }
}
