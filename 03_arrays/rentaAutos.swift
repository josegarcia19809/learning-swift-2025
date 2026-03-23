//
//  rentaAutos.swift
//  Swift 2025
//
//  Created by Jose Garcia on 23/03/26.
//

func rentaAutos() {
    print("🚗 Costo de renta de autos")

    let CLIENTES = 3

    var diasRenta: [Int] = Array(repeating: 0, count: CLIENTES)

    for i in 0 ..< CLIENTES {
        print("Ingrese los días de renta para el cliente \(i + 1): ", terminator: "")
        diasRenta[i] = Int(readLine() ?? "0") ?? 0
    }
    print()

    print("Dame el costo de renta por día: ", terminator: "")
    let costo = Double(readLine() ?? "0.0") ?? 0.0

    imprimirLinea()
    for i in 0 ..< CLIENTES {
        print("El cliente \(i + 1) deberá pagar \(diasRenta[i] * Int(costo)) pesos.")
    }
}
