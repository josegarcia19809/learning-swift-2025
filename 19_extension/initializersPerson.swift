//
//  initializersPerson.swift
//  Swift 2025
//
//  Created by Jose Garcia on 18/07/26.
//

extension PersonaIn {
    init(nombre: String) {
        self.init(nombre: nombre, edad: 18)
    }
}

struct PersonaIn {
    var nombre: String
    var edad: Int
}

func initializersPersonApp() {
    let persona = PersonaIn(nombre: "Jose")
    print(persona)
}
