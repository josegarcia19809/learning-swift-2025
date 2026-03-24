//
//  compraLibros.swift
//  Swift 2025
//
//  Created by Jose Garcia on 23/03/26.
//

func compraLibros() {
    print("📚 Compra de libros en una librería")

    let ESTUDIANTES = 6
    var librosComprados: [Int] = Array(repeating: 0, count: ESTUDIANTES)

    for estudiante in 0 ..< ESTUDIANTES {
        print("Cuántos libros desea comprar el estudiante 👩‍🎓 \(estudiante + 1)? ", terminator: "")
        librosComprados[estudiante] = Int(readLine() ?? "0") ?? 0
    }
    print()

    print("Dime el precio de este libro: ", terminator: "")
    let precioLibro = Double(readLine() ?? "0") ?? 0

    imprimirLinea()
    for estudiante in 0 ..< ESTUDIANTES {
        let totalPagar = Double(librosComprados[estudiante]) * precioLibro
        print("El estudiante 👨🏻‍🎓 \(estudiante + 1) debe pagar \(totalPagar) pesos")
    }
}
