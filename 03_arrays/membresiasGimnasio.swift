//
//  membresiasGimnasio.swift
//  Swift 2025
//
//  Created by Jose Garcia on 23/03/26.
//

func membresiasGimnasio() {
    print("🏋️ Pago de membresías en un gimnasio")

    let USUARIOS = 4

    var meses: [Int] = Array(repeating: 0, count: USUARIOS)

    for i in 0 ..< USUARIOS {
        print("Ingrese el número de meses de membresía de usuario🏋🏼‍♂️ \(i + 1): ", terminator: "")
        meses[i] = Int(readLine() ?? "0") ?? 0
    }
    print()

    print("Ingresa el costo mensual: ", terminator: "")
    let costoMensual = Double(readLine() ?? "0") ?? 0.0

    imprimirLinea()
    for i in 0 ..< USUARIOS {
        print("El costo total para el cliente \(i + 1) es: \(costoMensual * Double(meses[i])) pesos")
    }
}
