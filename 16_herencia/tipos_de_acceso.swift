//
//  tipos_de_acceso.swift
//  Swift 2025
//
//  Created by Jose Garcia on 15/07/26.
//

func tipos_de_accesoApp() {
    class CuentaBancaria {
        public let numeroCuenta: String
        private var saldo: Double

        init(numeroCuenta: String, saldo: Double) {
            self.numeroCuenta = numeroCuenta
            self.saldo = saldo
        }

        func depositar(_ cantidad: Double) {
            saldo += cantidad
        }

        func consultarSaldo() {
            print("Saldo: \(saldo)")
        }
    }

    let miCuenta = CuentaBancaria(numeroCuenta: "12345", saldo: 1000.0)
    // miCuenta.saldo no se puede acceder

    miCuenta.depositar(500)
    miCuenta.consultarSaldo()
}
