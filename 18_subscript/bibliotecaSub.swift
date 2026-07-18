//
//  bibliotecaSub.swift
//  Swift 2025
//
//  Created by Jose Garcia on 18/07/26.
//

func bibliotecaSubApp() {
    struct Biblioteca {
        var libros = ["Swift", "Java", "Python"]

        subscript(indice: Int) -> String {
            libros[indice]
        }
    }

    let biblioteca = Biblioteca()
    print(biblioteca[1])
}
