//
//  personasSub.swift
//  Swift 2025
//
//  Created by Jose Garcia on 18/07/26.
//

func personasSubApp() {
    struct Personas {
        var personas = [
            "Ana": 20,
            "Luis": 30,
        ]

        subscript(nombre: String) -> Int? {
            personas[nombre]
        }
    }

    let personas = Personas()
    print(personas["Ana"]!)
}
