//
//  mesa_self.swift
//  Swift 2025
//
//  Created by Jose Garcia on 24/06/26.
//

/*
 Una mesa permite al usuario ajustar la altura y el tamaño mediante una función que también recibe los parámetros altura y tamaño.

 Crea la estructura (struct), las variables, la función, instancia la estructura y llama a la función para ajustar la altura y el tamaño.
 */

func mesaApp() {
    struct Mesa {
        var altura: Int
        var tamaño: Int

        mutating func ajustarAlturaYTamanio(altura: Int, tamanio: Int) {
            self.altura = altura
            tamaño = tamanio
        }
    }

    var mesa = Mesa(altura: 10, tamaño: 10)
    mesa.ajustarAlturaYTamanio(altura: 15, tamanio: 15)
    print(mesa.altura)
    print(mesa.tamaño)
}
