//
//  carrera_reloj_dorado.swift
//  Swift 2025
//
//  Created by Jose Garcia on 20/04/26.
//

func carreraRelojDorado() {
    print("El Desafío del Reloj Dorado")

    let segundos = 8

    let distanciaInicial = 600.0

    var distanciasRecorridas: [Double] = Array(repeating: 0.0, count: segundos)

    for i in 1 ... segundos {
        let distancia = distanciaInicial + 25.0 * Double(i - 1)
        distanciasRecorridas[i - 1] = distancia
    }
    var totalDistancia = 0.0

    print("Segundo\t\tDistancia (cm)")
    for (i, distancia) in distanciasRecorridas.enumerated() {
        print("\(i + 1).\t\t\t \(distancia) cm")
        totalDistancia += distancia
    }

    print()
    print("Distancia total recorrida: \(totalDistancia) cm")
}
