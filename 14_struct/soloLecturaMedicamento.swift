//
//  soloLecturaMedicamento.swift
//  Swift 2025
//
//  Created by Jose Garcia on 30/06/26.
//

func MedicamentoApp() {
    struct Medicamento {
        var nombre: String
        var dosis: String
        var indicaciones: String
        var precioUnitario: Double
        var cantidad: Int

        /// Propiedad de solo lectura
        var precioTotal: Double {
            return precioUnitario * Double(cantidad)
        }
    }

    let medicamento = Medicamento(nombre: "Ibuprofeno", dosis: "500mg", indicaciones: "Para dolor", precioUnitario: 10.0, cantidad: 10)

    print("Medicamento: \(medicamento.nombre)")
    print("Precio unitario: $\(medicamento.precioUnitario)")
    print("Cantidad: \(medicamento.cantidad)")
    print("Total a pagar: $\(medicamento.precioTotal)")
}

func MedicamentoApp2() {
    struct Medicamento2 {
        var nombre: String
        private(set) var existencias: Int

        mutating func vender(cantidad: Int) {
            if existencias >= cantidad {
                existencias -= cantidad
            } else {
                print("No hay existencias suficientes")
            }
        }

        mutating func surtir(cantidad: Int) {
            existencias += cantidad
        }
    }

    var medicamento = Medicamento2(nombre: "Paracetamol", existencias: 20)
    print("Existencias: \(medicamento.existencias)")

    medicamento.vender(cantidad: 5)
    print("Existencias después de vender: \(medicamento.existencias)")
    medicamento.surtir(cantidad: 10)
    print("Existencias después de surtir: \(medicamento.existencias)")
}
