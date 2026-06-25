//
//  initializer_delegation.swift
//  Swift 2025
//
//  Created by Jose Garcia on 24/06/26.
//

func delegacionInicializacionApp() {
    struct Persona {
        var nombre: String
        var edad: Int

        init(nombre: String, edad: Int) {
            print("Inicializador principal")
            self.nombre = nombre
            self.edad = edad
        }

        init() {
            print("Inicializador secundario")
            self.init(nombre: "Sin nombre", edad: 0)
        }
    }

    let p = Persona()
    let p2 = Persona(nombre: "Pepe", edad: 20)

    print("\(p.nombre), \(p.edad)")
    print("\(p2.nombre), \(p2.edad)")
}
