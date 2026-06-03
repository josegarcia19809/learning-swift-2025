//
//  cambiar_valores.swift
//  Swift 2025
//
//  Created by Jose Garcia on 02/06/26.
//

// Create a function that swaps the values of two input parameters
// Print the values before calling the function, and after

func cambiar_valores(a: inout Int, b: inout Int) {
    let aux = a
    a = b
    b = aux
}

func cambiar_valores_app() {
    var a = 10
    var b = 20
    print("a: \(a), b: \(b)")
    cambiar_valores(a: &a, b: &b)
    print("a: \(a), b: \(b)")
}
