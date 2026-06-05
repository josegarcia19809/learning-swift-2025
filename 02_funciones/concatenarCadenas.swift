//
//  concatenarCadenas.swift
//  Swift 2025
//
//  Created by Jose Garcia on 05/06/26.
//

// Create a function that takes a variable number of strings, concatenates them with a single space separator and prints out the resulting string.
// Call it a few times

func concatenarCadenas(_ cadenas: String...) {
    print(cadenas.joined(separator: " "))
}

func concatenarCadenas2(_ cadenas: String...) -> String {
    var cadenaResultante = ""
    for cadena in cadenas {
        cadenaResultante += cadena + " "
    }
    return cadenaResultante
}

func concatenarCadenasApp() {
    concatenarCadenas("Hola", "Mundo", "a", "todos", "con", "Swift")

    print(concatenarCadenas2("Programando", "en", "Swift"))
}
