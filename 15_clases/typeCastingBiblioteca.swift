//
//  typeCastingBiblioteca.swift
//  Swift 2025
//
//  Created by Jose Garcia on 14/07/26.
//

/*
 Una biblioteca ofrece diversos elementos de biblioteca, todos los cuales tienen un título y pueden mostrar su propia información.

 La biblioteca ofrece libros, películas y artículos. El libro tiene un autor, la película tiene un director y el artículo tiene un escritor.

 Implementa esta estructura en código, crea un arreglo de elementos y, posteriormente, llama a la funcionalidad específica de cada elemento según su tipo.
 */

func typeCastingBibliotecaApp() {
    class ElementoBiblioteca {
        var titulo: String
        init(titulo: String) {
            self.titulo = titulo
        }

        func mostrarInfo() {
            print("\(titulo)")
        }
    }

    class Libro: ElementoBiblioteca {
        var autor: String
        init(titulo: String, autor: String) {
            self.autor = autor
            super.init(titulo: titulo)
        }

        override func mostrarInfo() {
            super.mostrarInfo()
            print("Autor: \(autor)")
        }
    }

    class Pelicula: ElementoBiblioteca {
        var director: String
        init(titulo: String, director: String) {
            self.director = director
            super.init(titulo: titulo)
        }

        override func mostrarInfo() {
            super.mostrarInfo()
            print("Director: \(director)")
        }
    }

    class Articulo: ElementoBiblioteca {
        var escritor: String
        init(titulo: String, escritor: String) {
            self.escritor = escritor
            super.init(titulo: titulo)
        }

        override func mostrarInfo() {
            super.mostrarInfo()
            print("Escritor: \(escritor)")
        }
    }

    func obtenerElementosBiblioteca() -> [ElementoBiblioteca] {
        return [
            Libro(
                titulo: "Cien años de soledad",
                autor: "Gabriel García Márquez"
            ),
            Libro(
                titulo: "Don Quijote de la Mancha",
                autor: "Miguel de Cervantes"
            ),
            Libro(
                titulo: "El Principito",
                autor: "Antoine de Saint-Exupéry"
            ),
            Pelicula(
                titulo: "El Padrino",
                director: "Francis Ford Coppola"
            ),
            Pelicula(
                titulo: "Titanic",
                director: "James Cameron"
            ),
            Pelicula(
                titulo: "Jurassic Park",
                director: "Steven Spielberg"
            ),
            Articulo(
                titulo: "Inteligencia Artificial en la Educación",
                escritor: "Ana López"
            ),
            Articulo(
                titulo: "El Futuro de la Computación Cuántica",
                escritor: "Carlos Hernández"
            ),
            Articulo(
                titulo: "Desarrollo de Aplicaciones Móviles",
                escritor: "María Rodríguez"
            ),
        ]
    }

    for elemento in obtenerElementosBiblioteca() {
        if elemento is Libro {
            print("Libro:")
            let libro = elemento as! Libro
            libro.mostrarInfo()
        } else if elemento is Pelicula {
            print("Película")
            let pelicula = elemento as! Pelicula
            pelicula.mostrarInfo()
        } else if elemento is Articulo {
            print("Artículo")
            let articulo = elemento as! Articulo
            articulo.mostrarInfo()
        }
        print()
    }
}
