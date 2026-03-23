//
//  pedidosPizzeria.swift
//  Swift 2025
//
//  Created by Jose Garcia on 23/03/26.
//

func pedidosPizzeria() {
    print("🍕 Cuenta de pedidos en una pizzería")

    let CLIENTES = 5

    var pizzas: [Int] = Array(repeating: 0, count: CLIENTES)

    for cliente in 0 ..< CLIENTES {
        print("🍕 Pizzas que ha pedido el 👥 cliente \(cliente + 1): ", terminator: "")
        pizzas[cliente] = Int(readLine() ?? "0") ?? 0
    }

    print()
    print("Dime el precio de la pizza🍕: ", terminator: "")
    let precioPizza = Double(readLine() ?? "0") ?? 0

    imprimirLinea()

    for cliente in 0 ..< CLIENTES {
        let pagoTotal = Double(pizzas[cliente]) * precioPizza
        print("El cliente \(cliente + 1) ha pagado un total de \(pagoTotal) pesos")
    }
}
