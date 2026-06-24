//
//  Calculator.swift
//  Swift 2025
//
//  Created by Jose Garcia on 23/06/26.
//

/*
 🧮 Crea una estructura llamada Calculator (Calculadora).

 Debe incluir:

 Una propiedad que almacene el total.
 Un método que sume un número al total.
 Un método que reste un número al total.
 Un método que multiplique el total por una cantidad.
 Un método que divida el total entre una cantidad.
 Un método que reinicie el total a 0.
 Instrucciones
 Crea una estructura llamada Calculator.
 Agrega una propiedad llamada total.
 Implementa los siguientes métodos:
 add(number) → suma un número al total.
 subtract(number) → resta un número al total.
 multiply(by) → multiplica el total por una cantidad.
 divide(by) → divide el total entre una cantidad.
 reset() → establece el total en 0.
 Crea una instancia de la estructura.
 Prueba todos los métodos.
 Imprime algunos resultados para verificar que funcionan correctamente.
 Ejemplo de comportamiento esperado
 Total inicial: 0

 add(10)
 Total: 10

 add(5)
 Total: 15

 subtract(3)
 Total: 12

 multiply(by: 2)
 Total: 24

 divide(by: 4)
 Total: 6

 reset()
 Total: 0

 💡 Como los métodos modifican la propiedad total, deberán declararse como mutating en Swift.
 */

func CalculatorApp() {
    struct Calculator {
        var total: Int
        mutating func add(number: Int) {
            total += number
        }

        mutating func subtract(number: Int) {
            total -= number
        }

        mutating func multiply(by number: Int) {
            total *= number
        }

        mutating func divide(by number: Int) {
            guard number != 0 else { return }
            total /= number
        }

        mutating func reset() {
            total = 0
        }
    }

    var calculator = Calculator(total: 0)
    print("Total: \(calculator.total)")
    calculator.add(number: 10)
    print("Total: \(calculator.total)")
    calculator.add(number: 5)
    print("Total: \(calculator.total)")
    calculator.subtract(number: 3)
    print("Total: \(calculator.total)")
    calculator.multiply(by: 2)
    print("Total: \(calculator.total)")
    calculator.divide(by: 4)
    print("Total: \(calculator.total)")
    calculator.reset()

    print("Total: \(calculator.total)")
}
