///
///  computed_property_persona.swift
///  Swift 2025
///
///  Created by Jose Garcia on 26/06/26.
///
func PersonaPropertyApp() {
    struct Persona {
        var nombre: String
        var apellido: String
        var nombreCompleto: String {
            return "\(nombre) \(apellido)"
        }
    }

    let persona = Persona(nombre: "José", apellido: "García")
    print(persona.nombreCompleto)
}
