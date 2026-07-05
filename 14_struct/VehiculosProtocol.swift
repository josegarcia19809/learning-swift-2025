//
//  VehiculosProtocol.swift
//  Swift 2025
//
//  Created by Jose Garcia on 04/07/26.
//

/*
 Control de vehículos

 En una empresa de transporte existen diferentes tipos de vehículos, como un automóvil y una motocicleta. Aunque son distintos, ambos pueden encenderse.

 Crea un protocolo llamado Encendible que obligue a cualquier tipo de vehículo a implementar una función llamada encender().

 Después:

 Crea una estructura Automovil que implemente el protocolo.
 Crea una estructura Motocicleta que implemente el protocolo.
 Cada vehículo debe mostrar un mensaje diferente al encenderse.
 Crea una función llamada encenderVehiculo(_:) que reciba cualquier objeto que cumpla con el protocolo Encendible y llame a su función encender().
 Crea una instancia de cada vehículo y utiliza la función para encender ambos.
 */

protocol Encencible {
    func encender()
}

func VehiculosProtocolApp() {
    struct Automovil: Encencible {
        func encender() {
            print("Encendiendo el auto 🚘")
        }
    }

    struct Motocicleta: Encencible {
        func encender() {
            print("Encendiendo la moto 🏍️")
        }
    }
    func encenderVehiculo(_ vehiculo: Encencible) {
        vehiculo.encender()
    }

    let auto = Automovil()
    let moto = Motocicleta()

    encenderVehiculo(auto)
    encenderVehiculo(moto)
}
