//
//  classPublicacionHerencia.swift
//  Swift 2025
//
//  Created by Jose Garcia on 16/02/25.
//

func classPublicacionHerencia() {
    class Publicacion: CustomStringConvertible {
        private var titulo: String
        private var autor: String

        init(titulo: String, autor: String) {
            self.titulo = titulo
            self.autor = autor
        }

        var description: String {
            return "Titulo: \(titulo)\nAutor: \(autor)"
        }
    }

    class LibroBiblioteca: Publicacion {
        private var isbn: String
        private var cantidadDisponible: Int

        init(titulo: String, autor: String, isbn: String, cantidadDisponible: Int) {
            self.isbn = isbn
            self.cantidadDisponible = cantidadDisponible
            super.init(titulo: titulo, autor: autor)
        }

        override var description: String {
            return "\(super.description)\nISBN: \(isbn)\nCantidad Disponible: \(cantidadDisponible)"
        }
    }

    let libro1 = LibroBiblioteca(titulo: "Cien años de soledad", autor: "Gabriel García Márquez",
                                 isbn: "9781234567890", cantidadDisponible: 12)
    print(libro1)
}
