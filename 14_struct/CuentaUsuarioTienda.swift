//
//  CuentaUsuarioTienda.swift
//  Swift 2025
//
//  Created by Jose Garcia on 24/06/26.
//

/*
 Crea una estructura para representar una cuenta de usuario de una tienda en línea que tenga las
 propiedades userName (nombre de usuario) y balance (saldo).

 Crea 3 inicializadores para esta estructura.

 Dentro de los inicializadores, con base en el saldo del usuario, imprime si puede comprar una
 camiseta (t-shirt), la cual cuesta 20, y, en caso afirmativo, indica cuántas camisetas puede comprar.
 */

func cuentaUsuarioTiendaApp() {
    struct CuentaUsuario {
        var nombreUsuario: String
        var saldo: Double

        /// Inicializador principal
        init(nombreUsuario: String, saldo: Double) {
            self.nombreUsuario = nombreUsuario
            self.saldo = saldo

            if saldo >= 20 {
                let cantidad = Int(saldo / 20)
                print("\(nombreUsuario) puede comprar \(cantidad) camiseta(s).")
            } else {
                print("\(nombreUsuario) no puede comprar una camiseta.")
            }
        }

        /// Inicializador con saldo predeterminado
        init(nombreUsuario: String) {
            self.init(nombreUsuario: nombreUsuario, saldo: 100)
        }

        /// Inicializador sin parámetros
        init() {
            self.init(nombreUsuario: "Sin nombre", saldo: 20)
        }
    }

    _ = CuentaUsuario()

    imprimirLinea()

    _ = CuentaUsuario(nombreUsuario: "José")

    imprimirLinea()

    _ = CuentaUsuario(nombreUsuario: "Luis", saldo: 120)

    imprimirLinea()

    _ = CuentaUsuario(nombreUsuario: "Ana", saldo: 15)
}
