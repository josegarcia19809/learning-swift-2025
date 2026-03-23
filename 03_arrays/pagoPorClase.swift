//
//  pagoPorClase.swift
//  Swift 2025
//
//  Created by Jose Garcia on 23/03/26.
//

func pagoPorClase() {
    print("Pago por clases impartidas📖")

    let DOCENTES = 7

    var horas: [Int] = Array(repeating: 0, count: DOCENTES)

    for i in 0 ..< DOCENTES {
        print("Dame las horas de clase del docente \(i + 1): ", terminator: "")
        horas[i] = Int(readLine() ?? "0") ?? 0
    }
    print()

    print("Dime el pago por hora: ", terminator: "")
    let pagoHora = Int(readLine() ?? "0") ?? 0

    imprimirLinea()

    for i in 0 ..< DOCENTES {
        let pagoTotal = horas[i] * pagoHora
        print("El docente \(i + 1) recibe de pago \(pagoTotal) pesos")
    }
}
