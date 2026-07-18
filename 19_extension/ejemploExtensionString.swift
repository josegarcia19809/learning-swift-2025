//
//  ejemploExtensionString.swift
//  Swift 2025
//
//  Created by Jose Garcia on 18/07/26.
//

// MARK: - Extensions

extension String {
    func saludar() {
        print("Hola \(self)")
    }
}

func ejemploExtensionStringApp() {
    let nombre = "Jose"
    nombre.saludar()
}
