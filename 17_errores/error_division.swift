//
//  error_division.swift
//  Swift 2025
//
//  Created by Jose Garcia on 16/07/26.
//

func error_divisionApp() {
    enum errorDivision: Error {
        case divisionByZero
    }

    func dividir(_ a: Double, entre b: Double) throws -> Double {
        if b == 0 {
            throw errorDivision.divisionByZero
        }
        return a / b
    }

    do {
        let resultado = try dividir(10, entre: 0)
        print(resultado)
    } catch {
        print("No es posible dividir entre cero")
    }
}
