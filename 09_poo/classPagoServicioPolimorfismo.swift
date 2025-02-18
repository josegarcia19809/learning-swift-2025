//
//  classPagoServicioPolimorfismo.swift
//  Swift 2025
//
//  Created by Jose Garcia on 17/02/25.
//

func classPagoServicioPolimorfismo() {
    class Servicio: CustomStringConvertible {
        private var nombre: String

        init(nombre: String) {
            self.nombre = nombre
        }

        var description: String {
            return "Servicio: \(nombre)"
        }

        func calcularPago() -> Double {
            return 0
        }
    }

    class ServicioElectricidad: Servicio {
        private var consumoKWH: Double
        private var tarifaKWH: Double

        init(nombre: String, consumoKWH: Double, tarifaKWH: Double) {
            self.consumoKWH = consumoKWH
            self.tarifaKWH = tarifaKWH
            super.init(nombre: nombre)
        }

        override func calcularPago() -> Double {
            return consumoKWH * tarifaKWH
        }

        override var description: String {
            return "\(super.description), consumo: \(consumoKWH) kWh, tarifa: \(tarifaKWH) $/kWh" +
                    ", pago: $\(String(format: "%.2f", calcularPago()))"
        }
    }

    class ServicioAgua: Servicio {
        private var consumoMetrosCubicos: Double
        private var tarifaMetrosCubicos: Double

        init(nombre: String, consumoMetrosCubicos: Double, tarifaMetrosCubicos: Double) {
            self.consumoMetrosCubicos = consumoMetrosCubicos
            self.tarifaMetrosCubicos = tarifaMetrosCubicos
            super.init(nombre: nombre)
        }

        override func calcularPago() -> Double {
            return consumoMetrosCubicos * tarifaMetrosCubicos
        }

        override var description: String {
            return "\(super.description), consumo: \(consumoMetrosCubicos) metros cúbicos, " +
                    "tarifa: \(tarifaMetrosCubicos) $/m³" + ", pago: $\(String(format: "%.2f", calcularPago()))"
        }
    }

    class ServicioGas: Servicio {
        private var consumoLitros: Double
        private var tarifaLitro: Double

        init(nombre: String, consumoLitros: Double, tarifaLitro: Double) {
            self.consumoLitros = consumoLitros
            self.tarifaLitro = tarifaLitro
            super.init(nombre: nombre)
        }

        override func calcularPago() -> Double {
            return consumoLitros * tarifaLitro
        }

        override var description: String {
            return "\(super.description), consumo: \(consumoLitros) litros, " +
                    "tarifa: \(tarifaLitro) $/litro" + ", pago: $\(String(format: "%.2f", calcularPago()))"
        }
    }

    let servicioElectricidad = ServicioElectricidad(nombre: "Luz", consumoKWH: 100, tarifaKWH: 0.13)
    let servicioGas = ServicioGas(nombre: "Gas", consumoLitros: 200, tarifaLitro: 0.07)
    let servicioAgua = ServicioAgua(nombre: "Agua", consumoMetrosCubicos: 100, tarifaMetrosCubicos: 12)

    imprimirLinea()
    print(servicioElectricidad)
    print(servicioAgua)
    print(servicioGas)
    imprimirLinea()

}
