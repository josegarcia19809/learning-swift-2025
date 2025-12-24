//
//  overloading_cafeteria.swift
//  Swift 2025
//
//  Created by Jose Garcia on 24/12/25.
//

import Foundation

// Combinar nombres de productos
func combinar(_ producto1: String, _ producto2: String) -> String {
    return "\(producto1) con \(producto2)"
}

// Sumar cantidades de productos
func combinar(_ cantidad1: Int, _ cantidad2: Int) -> Int {
    return cantidad1 + cantidad2
}

func cafeteriaCombinar() {
    // Uso de las funciones
    let pedidoEspecial = combinar("Café", "Pan dulce")
    let totalProductos = combinar(2, 3)

    print(pedidoEspecial)  // Café con Pan dulce
    print(totalProductos)  // 5
}
