//
//  tipoPersona.swift
//  Swift 2025
//
//  Created by Jose Garcia on 18/07/26.
//

/**

 Un tipo Person mantiene varias propiedades como name, age y address.

 Para mayor comodidad, queremos poder acceder a estas propiedades utilizando la notación de corchetes ([]). Implementa esto en código.

 La idea es crear un subscript que permita acceder a las propiedades de una persona mediante un texto, por ejemplo:

 persona["name"]
 persona["age"]
 persona["address"]

 En lugar de escribir:

 persona.name
 persona.age
 persona.address
 */
func tipoPersonaApp() {
    struct Person {
        var name: String
        var age: Int
        var address: String

        subscript(property: String) -> String {
            get {
                switch property.lowercased() {
                case "name":
                    return name
                case "age":
                    return "\(age)"
                case "address":
                    return address
                default:
                    return "Propiedad no encontrada"
                }
            }

            set {
                switch property.lowercased() {
                case "name":
                    name = newValue
                case "age":
                    age = Int(newValue) ?? age
                case "address":
                    address = newValue
                default:
                    break
                }
            }
        }
    }

    var persona = Person(
        name: "José",
        age: 25,
        address: "Ciudad de México"
    )

    print(persona["name"])
    print(persona["age"])
    print(persona["address"])
    print()
    // Modificar
    persona["name"] = "Ana"
    persona["age"] = "30"
    persona["address"] = "Monterrey"

    print(persona["name"])
    print(persona["age"])
    print(persona["address"])
}
