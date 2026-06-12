//
//  closure_division.swift
//  Swift 2025
//
//  Created by Jose Garcia on 11/06/26.
//

/*
 Debes crear una Higher Order Function (HOF), es decir, una función que recibe otra
 función (closure) como parámetro.

 La función debe:

 Recibir una colección mutable de enteros ([Int]).
 Recibir un closure.
 Recorrer la colección.
 Identificar cuáles números son pares.
 Aplicar el closure únicamente a esos números pares.
 Mostrar el resultado final.
 📌 Segunda parte

 Debes crear un closure que:

 Reciba un número entero.
 Lo divida entre 10.
 Devuelva el resultado.
 */

func divisionEntre10Pares(entrada coleccion: inout [Int], operacion: (Int) -> Int) {
    for (index, elemento) in coleccion.enumerated() {
        if elemento % 2 == 0 {
            let division = operacion(elemento)
            coleccion[index] = division
        }
    }
}

func closureDivisionApp() {
    var numeros: [Int] = [10, 21, 30, 41, 50, 61, 70, 81, 90, 101]
    // Primera forma
    divisionEntre10Pares(entrada: &numeros, operacion: { numero -> Int in
        return numero / 10
    })
    print(numeros)

    // Segunda forma
    numeros = [101, 210, 300, 410, 500, 610, 700, 810, 900, 1011]
    divisionEntre10Pares(entrada: &numeros) {
        $0 / 10
    }
    print(numeros)
}
