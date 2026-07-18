//
//  catalogoLibros.swift
//  Swift 2025
//
//  Created by Jose Garcia on 18/07/26.
//
/* 
 Este reto consiste en crear un catálogo de libros donde:

 Un Libro (Book) tiene:
 title (título)
 author (autor)
 Un BookCatalog almacena los libros usando su ISBN como clave.
 Debe tener métodos para:
 Agregar libros.
 Eliminar libros.
 Debe permitir acceder a un libro mediante la sintaxis de corchetes ([]) usando un subscript.
 */

func catalogoLibrosApp() {
    struct Libro {
        var titulo: String
        var autor: String
    }

    class catalogoLibros {
        private var libros: [String: Libro] = [:]

        /// Agregar un libro
        func agregarLibro(isbn: String, libro: Libro) {
            libros[isbn] = libro
        }

        /// Eliminar un libro
        func removerLibro(isbn: String) {
            libros.removeValue(forKey: isbn)
        }

        subscript(isbn: String) -> Libro? {
            get {
                return libros[isbn]
            }
            set {
                libros[isbn] = newValue
            }
        }
    }

    let libro1 = Libro(
        titulo: "Swift Programming",
        autor: "Apple"
    )

    let libro2 = Libro(
        titulo: "Clean Code",
        autor: "Robert C. Martin"
    )

    let catalogo = catalogoLibros()

    catalogo.agregarLibro(isbn: "9876", libro: libro1)
    catalogo.agregarLibro(isbn: "1234", libro: libro2)

    // Recuperar un libro usando el subscript
    if let libro = catalogo["9876"] {
        print(libro.titulo)
        print(libro.autor)
    }

    // Agregar usando el subscript
    // Como el subscript tiene set, también podemos agregar libros así:
    catalogo["5678"] = Libro(titulo: "The Pragmatic Programmer", autor: "Andrew Hunt")

    // Modificar un libro
    catalogo["9876"] = Libro(
        titulo: "Advanced Swift",
        autor: "Apple"
    )

    if let libro = catalogo["9876"] {
        print(libro.titulo)
        print(libro.autor)
    }

    // Eliminar un libro
    catalogo.removerLibro(isbn: "9876")

    // Verificar que fue eliminado
    if let libro = catalogo["9876"] {
        print(libro.titulo)
    } else {
        print("Libro no encontrado")
    }
}
