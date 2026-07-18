//
//  conMultiples.swift
//  Swift 2025
//
//  Created by Jose Garcia on 18/07/26.
//

func conMultiplesApp() {
    struct Persona {
        var nombre = "Ana"
        var edad = 20

        subscript(indice: Int) -> String {
            switch indice {
            case 0: return nombre
            case 1: return "\(edad)"
            default: return "No existe"
            }
        }

        subscript(campo: String) -> String {
            switch campo {
            case "nombre":
                return nombre

            case "edad":
                return "\(edad)"

            default:
                return "No existe"
            }
        }
    }

    let persona = Persona()

    print(persona[0])
    print(persona["edad"])
}
