//
//  initializer_delegation_mesa.swift
//  Swift 2025
//
//  Created by Jose Garcia on 24/06/26.
//
/**
 Este ejercicio sirve para demostrar el concepto de delegación de inicializadores
 (Initializer Delegation) en Swift. La idea es que una mesa puede crearse de dos maneras:

 Especificando su altura y el número de patas.
 Especificando el tipo de mesa, y el inicializador asignará automáticamente los valores correspondientes.

 En este caso, el inicializador que recibe el tipo de mesa utiliza self.init(...)
 para llamar al inicializador principal.
 */
func initializer_delegation_mesa_app() {
    enum TipoMesa {
        case comedor
        case centro
        case artistica
    }

    struct Mesa {
        var altura: Double
        var numeroDePatas: Int

        /// Inicializador principal
        init(altura: Double, numeroDePatas: Int) {
            self.altura = altura
            self.numeroDePatas = numeroDePatas
        }

        /// Inicializador que delega al principal
        init(tipo: TipoMesa) {
            switch tipo {
            case .comedor:
                self.init(altura: 75.0, numeroDePatas: 4)

            case .centro:
                self.init(altura: 45.0, numeroDePatas: 4)

            case .artistica:
                self.init(altura: 90.0, numeroDePatas: 1)
            }
        }

        func mostrarCaracteristicas() {
            print("Altura: \(altura) cm")
            print("Número de patas: \(numeroDePatas)")
            print("---------------------------")
        }
    }

    // Crear mesas especificando los parámetros
    let mesaPersonalizada = Mesa(altura: 80.0, numeroDePatas: 6)

    // Crear mesas especificando el tipo
    let mesaComedor = Mesa(tipo: .comedor)
    let mesaCentro = Mesa(tipo: .centro)
    let mesaArtistica = Mesa(tipo: .artistica)

    // Mostrar las características
    print("Mesa personalizada")
    mesaPersonalizada.mostrarCaracteristicas()

    print("Mesa de comedor")
    mesaComedor.mostrarCaracteristicas()

    print("Mesa de centro")
    mesaCentro.mostrarCaracteristicas()

    print("Mesa artística")
    mesaArtistica.mostrarCaracteristicas()
}
