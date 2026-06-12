//
//  closure_nombres.swift
//  Swift 2025
//
//  Created by Jose Garcia on 11/06/26.
//

func closureNombres(nombres: [String], mostrarSaludo: (String) -> Void) {
    for nombre in nombres {
        mostrarSaludo(nombre)
    }
}

func closureNombresApp() {
    let nombres = ["Jose", "Ana", "Pepe", "Rosa"]
    let miClosure = { (nombre: String) in print("Hello \(nombre)") }

    closureNombres(nombres: nombres, mostrarSaludo: miClosure)
}
