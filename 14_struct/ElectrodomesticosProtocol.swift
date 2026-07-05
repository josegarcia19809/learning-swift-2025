//
//  ElectrodomesticosProtocol.swift
//  Swift 2025
//
//  Created by Jose Garcia on 04/07/26.
//

/*
 En una tienda de electrodomésticos existen diferentes aparatos, como un microondas y una lavadora. Todos los electrodomésticos deben cumplir con los siguientes requisitos:

 Tener un método encender().
 Tener un método apagar().
 Tener un método mutating llamado reiniciar() que apague el electrodoméstico y vuelva a dejarlo en estado inicial.
 Tener un método static llamado mostrarCategoria() que muestre la categoría del electrodoméstico.
 Crear una estructura Microondas y otra Lavadora que implementen el protocolo.
 Crear una instancia de cada una y probar todos los métodos.
 */

protocol Electrodomestico {
    func encender()
    func apagar()

    mutating func reiniciar()

    static func mostrarCategoria()
}

func ElectrodomesticosProtocolApp() {
    struct Microondas: Electrodomestico {
        var encendido = true
        func encender() {
            print("Encendiendo microondas")
        }

        func apagar() {
            print("Apagando microondas")
        }

        mutating func reiniciar() {
            encendido = true
            print("Microondas fue reiniciado")
        }

        static func mostrarCategoria() {
            print("Categoría: Electrodoméstico de Cocina")
        }
    }

    struct Lavadora: Electrodomestico {
        var encendido = false
        func encender() {
            print("La lavadora se ha encendido")
        }

        func apagar() {
            print("La lavadora se ha apagado")
        }

        mutating func reiniciar() {
            encendido = false
            print("La lavadora fue reiniciada")
        }

        static func mostrarCategoria() {
            print("Categoría: Electrodoméstico de limpieza")
        }
    }

    var microondas = Microondas()
    var lavadora = Lavadora()

    microondas.encender()
    microondas.apagar()
    microondas.reiniciar()

    print()
    lavadora.encender()
    lavadora.apagar()
    lavadora.reiniciar()

    print()
    Microondas.mostrarCategoria()
    Lavadora.mostrarCategoria()
}
