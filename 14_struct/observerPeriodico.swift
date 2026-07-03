//
//  observerPeriodico.swift
//  Swift 2025
//
//  Created by Jose Garcia on 02/07/26.
//

/*
 Un periódico almacena una lista de suscriptores, así como una propiedad llamada boletín informativo (newsletter). También cuenta con una función para agregar suscriptores.

 Cuando se asigna un nuevo valor a la propiedad newsletter, significa que se ha enviado una nueva edición del boletín a los suscriptores, por lo que estos deben ser notificados.

 Además, es necesario registrar (llevar un registro de) cada actualización del boletín informativo.

 Implementa esta funcionalidad en código.
 */

func observerPeriodicoApp() {
    struct Suscriptor {
        var nombre: String
    }
    struct Periodico {
        var suscriptores: [Suscriptor]
        var newsletter: String = "" {
            willSet {
                // Registrar que una nueva edición está por publicarse.
                // Preparar el envío del boletín (opcional).
                print("Una nueva edición de \(newsletter) está por publicarse.")
                print("Preparando el envío del boletín...")
            }

            didSet {
                /*
                 Recorrer la lista de suscriptores y notificarles que hay un nuevo boletín.
                 Registrar en un log que el boletín fue actualizado correctamente.
                 */
                for suscriptor in suscriptores {
                    print("Hola \(suscriptor.nombre), hay una nueva edición de \(newsletter)")
                }
                print("El boletín de \(newsletter) fue actualizado correctamente.")
            }
        }

        mutating func agregarSuscriptor(suscriptor: Suscriptor) {
            suscriptores.append(suscriptor)
        }
    }

    let nuevoSuscriptor = Suscriptor(nombre: "Jose")
    let nuevoSuscriptor2 = Suscriptor(nombre: "Ana")
    var periodico = Periodico(suscriptores: [nuevoSuscriptor, nuevoSuscriptor2])
    periodico.suscriptores.append(Suscriptor(nombre: "Pepe"))
    periodico.suscriptores.append(Suscriptor(nombre: "Rosa"))

    periodico.newsletter = "Swift 2025"
}
