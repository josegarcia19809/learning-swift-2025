//
//  herenciaMultiple.swift
//  Swift 2025
//
//  Created by Jose Garcia on 15/07/26.
//

func herenciaMultipleApp() {
    /* En este ejemplo:

     Pato hereda de la clase Animal.
     Pato adopta los protocolos Volador y Nadador.

     Esta es la forma recomendada en Swift para combinar comportamientos sin recurrir a la herencia múltiple.
     */
    protocol Volador {
        func volar()
    }

    protocol Nadador {
        func nadar()
    }

    class Animal {
        func respirar() {
            print("Respirando")
        }
    }

    class Pato: Animal, Volador, Nadador {
        func volar() {
            print("Volando")
        }

        func nadar() {
            print("Nadando")
        }
    }

    let pato = Pato()
    pato.volar()
    pato.nadar()
    pato.respirar()
}
