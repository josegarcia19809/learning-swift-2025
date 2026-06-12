//
//  closure_nombres2.swift
//  Swift 2025
//
//  Created by Jose Garcia on 11/06/26.
//

func closureNombres2(nombres: [String], mostrarSaludo: (String) -> Void) {
    for nombre in nombres {
        mostrarSaludo(nombre)
    }
}

func closureNombresApp2() {
    let nombres = ["Jose", "Ana", "Pepe", "Rosa"]
    closureNombres2(nombres: nombres, mostrarSaludo: { (nombre: String) in print("Hello \(nombre)") })
}



func closureNombresApp3() {
    let nombres = ["Luis", "Ana", "Pepe", "Rosa"]
    closureNombres2(nombres: nombres) {nombre in
        print("Hello \(nombre)") }
}
