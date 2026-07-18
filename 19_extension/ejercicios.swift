//
//  ejercicios.swift
//  Swift 2025
//
//  Created by Jose Garcia on 18/07/26.
//

import Foundation

extension String {
    /// Eliminar espacios y devolver la longitud.
    var longitudSinEspacios: Int {
        return replacingOccurrences(of: " ", with: "").count
    }
}

extension Int {
    /// Determinar si un número es primo.
    func esPrimo() -> Bool {
        if self < 2 {
            return false
        }

        for i in 2 ..< self {
            if self % i == 0 {
                return false
            }
        }

        return true
    }
}

extension String {
    /// Crear un String únicamente con caracteres alfanuméricos.
    init(alfaNumerico texto: String) {
        let filtrado = texto.unicodeScalars.filter {
            CharacterSet.alphanumerics.contains($0)
        }

        self = String(String.UnicodeScalarView(filtrado))
    }
}

func ejercicio1() {
    let texto = "hola mundo swift"
    print(texto.longitudSinEspacios)
}

func ejercicio2() {
    let numero = 11
    print(numero.esPrimo())

    print(12.esPrimo())
}

func ejercicio3() {
    let texto = "hola123!!! Swift@@2025"
    print(String(alfaNumerico: texto))
}

func ejerciciosApp() {
    ejercicio1()
    ejercicio2()
    ejercicio3()
}
