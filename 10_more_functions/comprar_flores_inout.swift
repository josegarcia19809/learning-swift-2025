//
//  comprar_flores_inout.swift
//  Swift 2025
//
//  Created by Jose Garcia on 02/06/26.
//

func comprarFlores(cuantas: inout Int) {
    cuantas += 3
    print("Tengo \(cuantas) flores")
}

func comprarFloresApp() {
    var flores = 2
    comprarFlores(cuantas: &flores)
    print("flores: \(flores)") // 5
}
