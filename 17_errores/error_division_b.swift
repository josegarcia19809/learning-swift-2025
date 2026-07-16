//
//  error_division_b.swift
//  Swift 2025
//
//  Created by Jose Garcia on 16/07/26.
//

func error_division_bApp() {
    // Errores personalizados
    enum DivisionError: Error {
        case divisionByZero
        case invalidInput(message: String)
        case resultOutOfRange
    }

    /// Función que puede lanzar errores
    func positiveDoubleDigitDivide(_ dividend: Int, by divisor: Int) throws -> Int {
        // Validar que el divisor no sea cero
        guard divisor != 0 else {
            throw DivisionError.divisionByZero
        }

        // Validar que ambos números sean positivos
        guard dividend >= 0 && divisor > 0 else {
            throw DivisionError.invalidInput(
                message: "El dividendo y el divisor deben ser positivos."
            )
        }

        let result = dividend / divisor

        // Validar que el resultado sea menor que 100
        guard result < 100 else {
            throw DivisionError.resultOutOfRange
        }

        return result
    }

    /// Función que maneja los errores
    func doTryCatch(dividend: Int, divisor: Int) {
        do {
            let result = try positiveDoubleDigitDivide(dividend, by: divisor)

            print("Resultado: \(result)")

        } catch DivisionError.divisionByZero {
            print("❌ Error: No es posible dividir entre cero.")

        } catch let DivisionError.invalidInput(message) {
            print("❌ Error: \(message)")

        } catch DivisionError.resultOutOfRange {
            print("❌ Error: El resultado debe ser menor que 100.")

        } catch {
            print("❌ Error inesperado: \(error)")
        }
    }

    // ===============================
    // Pruebas
    // ===============================

    print("Caso 1")
    doTryCatch(dividend: 50, divisor: 5)

    print("\nCaso 2")
    doTryCatch(dividend: 5, divisor: 0)

    print("\nCaso 3")
    doTryCatch(dividend: -20, divisor: 2)

    print("\nCaso 4")
    doTryCatch(dividend: 1000, divisor: 5)
}
