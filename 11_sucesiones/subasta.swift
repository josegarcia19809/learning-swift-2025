//
//  subasta.swift
//  Swift 2025
//
//  Created by Jose Garcia on 20/04/26.
//

func subastaDelSiglo() {
    print("La Subasta del Siglo: El Reto de los 12 Tesoros")
    let TESOROS = 12
    var articulos: [Int] = Array(repeating: 0, count: TESOROS)

    let precioInicial = 800
    for n in 1 ... TESOROS {
        let precioActual = precioInicial + ((n - 1) * 300)
        articulos[n - 1] = precioActual
    }

    var total = 0
    print("#Artículo\t Precio")
    for (i, articulo) in articulos.enumerated() {
        total += articulo
        print("\(i + 1).\t\t\t $\(articulo)")
    }
    print()
    print("Total a pagar $\(total)")
}
