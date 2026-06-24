//
//  SimpleMath.swift
//  Swift 2025
//
//  Created by Jose Garcia on 23/06/26.
//

/*
 Crea una estructura llamada SimpleMath. 🧮

 Debe tener cuatro métodos:

 Add: recibe dos parámetros y devuelve la suma.
 Sub: recibe dos parámetros y devuelve la resta (diferencia).
 Mul: recibe dos parámetros y devuelve la multiplicación.
 Div: recibe dos parámetros y devuelve la división.

 Después, crea una instancia de esa estructura y prueba cada uno de sus métodos para verificar que funcionan correctamente. ✅

 Por ejemplo:

 Add(10, 5) → 15
 Sub(10, 5) → 5
 Mul(10, 5) → 50
 Div(10, 5) → 2
 */

func SimpleMathApp() {
    struct SimpleMath {
        func Add(_ a: Int, _ b: Int) -> Int {
            return a + b
        }

        func Sub(_ a: Int, _ b: Int) -> Int {
            return a - b
        }

        func Mul(_ a: Int, _ b: Int) -> Int {
            a * b
        }

        func Div(_ a: Int, _ b: Int) -> Int {
            guard b != 0 else { return 0 }
            return a / b
        }
    }
    
    let simpleMath = SimpleMath()
    print(simpleMath.Add(10, 5))
    print(simpleMath.Sub(10, 5))
    print(simpleMath.Mul(10, 5))
    print(simpleMath.Div(10, 5))
}
