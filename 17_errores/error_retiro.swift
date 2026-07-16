//
//  error_retiro.swift
//  Swift 2025
//
//  Created by Jose Garcia on 16/07/26.
//

func error_retiroApp() {
    enum ErrorRetiro: Error {
        case fondosInsuficientes
    }

    func retirar(saldo: Double, cantidad: Double) throws -> Double {
        if cantidad > saldo {
            throw ErrorRetiro.fondosInsuficientes
        }
        return saldo - cantidad
    }

    do {
        let nuevoSaldo = try retirar(saldo: 100, cantidad: 200)
        print("Nuevo saldo: \(nuevoSaldo)")
    } catch ErrorRetiro.fondosInsuficientes {
        print("No tienes suficiente dinero.")
    } catch {
        print("Ocurrió un error inesperado.")
    }
}
