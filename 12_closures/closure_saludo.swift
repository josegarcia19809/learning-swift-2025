//
//  closure_saludo.swift
//  Swift 2025
//
//  Created by Jose Garcia on 11/06/26.
//

func closureSaludo() {
    let miSaludo = { (nombre: String) -> String in "Hola \(nombre)" }
    print(miSaludo("José"))

    let miSaludo2 = { () in print("Hey, cómo estás?") }
    miSaludo2()
}
