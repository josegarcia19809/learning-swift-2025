//
//  procesador_pagos.swift
//  Swift 2025
//
//  Created by Jose Garcia on 16/07/26.
//
/**

 Un PaymentProcessor (procesador de pagos) administra el saldo de una cuenta y tiene la funcionalidad de realizar pagos. Lanzará errores si no puede completar el pago debido a fondos insuficientes o a datos de entrada incorrectos. Una vez que el pago se complete, debe registrar el resultado en la consola.

 Crea una función que llame a la funcionalidad del procesador de pagos y maneje cualquier error que pueda ocurrir.
 */
func procesador_pagosApp() {
    enum PagosError: Error {
        case fondosInsuficientes
        case cantidadInvalida
    }

    class ProcesadorPago {
        private var balance: Double

        init(balance: Double) {
            self.balance = balance
        }

        func hacerPago(cantidad: Double) throws {
            defer {
                print("Proceso de pago finalizado")
            }

            guard cantidad > 0 else {
                throw PagosError.cantidadInvalida
            }
            guard cantidad <= balance else {
                throw PagosError.fondosInsuficientes
            }
            balance -= cantidad

            print("Pago exitoso")
            print("Cantidad: $\(cantidad)")
            print("Balance restante: $\(balance)")
        }
    }

    func procesarPago() {
        let procesador = ProcesadorPago(balance: 100.0)
        do {
            try procesador.hacerPago(cantidad: 150.0)
        }

        catch PagosError.cantidadInvalida {
            print("Error: La cantidad a pagar debe ser mayor que cero")
        } catch PagosError.fondosInsuficientes {
            print("Error: Fondos insuficientes")
        } catch {
            print("Error procesando pago: \(error)")
        }
    }

    procesarPago()
}
