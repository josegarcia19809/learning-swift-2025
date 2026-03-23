//
//  compras_tienda.swift
//  Swift 2025
//
//  Created by Jose Garcia on 23/03/26.
//

func comprasTienda() {
    print("Costo total de compras en una tienda 🍎")

    let CLIENTES = 8

    var cantidades: [Int] = Array(repeating: 0, count: CLIENTES)

    print("Dime el precio del producto que se compró: ", terminator: "")
    let precio = Int(readLine() ?? "0") ?? 0

    for i in 0 ..< CLIENTES {
        print("Dime cuántos productos compró el cliente #\(i + 1): ", terminator: "")
        cantidades[i] = Int(readLine() ?? "0") ?? 0
    }
    print()
    imprimirLinea()

    for i in 0 ..< CLIENTES {
        let total = precio * cantidades[i]
        print("El cliente \(i + 1) compró un total de \(total) pesos")
    }
}
