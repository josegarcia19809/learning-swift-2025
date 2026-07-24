//
//  agregarFuncionalidadString.swift
//  Swift 2025
//
//  Created by Jose Garcia on 18/07/26.
//

/*
 Se agregaron tres elementos nuevos al tipo String:

 Una propiedad (estaVacio).
 Un método (invertir()).
 Un inicializador (init(arreglo:)).
 */

import Foundation
extension String {
    var estaVacio: Bool {
        trimmingCharacters(in: .whitespacesAndNewlines).isEmpty
    }

    func invertir() -> String {
        String(reversed())
    }

    init(arreglo: [String]) {
        self = arreglo.joined(separator: " ")
    }
}

func agregarFuncionalidadStringApp() {
    let arreglo: [String] = ["hola", "mundo", "desde", "swift"]
    let cadena = String(arreglo: arreglo)
    print(cadena.invertir())

    let texto = "     "
    print(texto.estaVacio)
}
