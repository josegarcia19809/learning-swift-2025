//
//  nombre_guard.swift
//  Swift 2025
//
//  Created by Jose Garcia on 16/07/26.
//

func nombre_guardApp() {
    func saludar(nombre: String?) {
        guard let nombre = nombre else {
            print("No se proporcionó un nombre")
            return
        }
        print("Hola \(nombre)")
    }

    saludar(nombre: "Daniel")
    saludar(nombre: nil)
}
