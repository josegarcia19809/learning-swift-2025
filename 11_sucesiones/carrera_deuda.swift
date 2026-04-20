//
//  carrera_deuda.swift
//  Swift 2025
//
//  Created by Jose Garcia on 20/04/26.
//

func carreraDeuda() {
    print("La Carrera Contra la Deuda")

    let semanas = 14
    var pagoSemanas: [Double] = Array(repeating: 0.0, count: semanas)

    let pagoInicial = 50.0

    for i in 1 ... semanas {
        let aPagar = pagoInicial + 30.0 * Double(i - 1)
        pagoSemanas[i - 1] = aPagar
    }
    
    var totalAPagar = 0.0
    print("Semana \t\tPago de la semana")
    for (i, pago) in pagoSemanas.enumerated(){
        totalAPagar += pago
        print("\(i+1) \t\t\t$\(pago)")
    }
    
    print()
    print("Total a pagar $\(totalAPagar)")
}
