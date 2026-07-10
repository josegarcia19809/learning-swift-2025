//
//  classLibroPrestado.swift
//  Swift 2025
//
//  Created by Jose Garcia on 09/07/26.
//

/*
 Una editorial proporciona libros a los usuarios, pero también conserva una copia de cada libro. Tiene 10 libros en su inventario y puede crear más libros cuando sea necesario.

 Cuando un usuario solicita un libro, la editorial tiene un 50% de probabilidad de proporcionar un libro nuevo y un 50% de probabilidad de proporcionar un libro existente.

 Un usuario solicita 5 libros.

 Desarrolla un programa que verifique si algún libro ha sido proporcionado más de una vez.
 */

func classLibroPrestadoApp() {
    class Book {

        let id: Int

        init(id: Int) {
            self.id = id
        }
    }

    class PublishingHouse {

        private var books: [Book] = []
        private var nextId = 1

        init() {
            for _ in 1...10 {
                books.append(Book(id: nextId))
                nextId += 1
            }
        }

        func getBook() -> Book {

            if Bool.random() {
                let newBook = Book(id: nextId)
                nextId += 1
                books.append(newBook)
                return newBook
            } else {
                return books.randomElement()!
            }
        }
    }

    let publishingHouse = PublishingHouse()

    var requestedBooks: [Book] = []

    for _ in 1...5 {
        let book = publishingHouse.getBook()
        requestedBooks.append(book)
        print("Libro recibido: \(book.id)")
    }

    var repeated = false

    for i in 0..<requestedBooks.count {
        for j in (i + 1)..<requestedBooks.count {

            if requestedBooks[i] === requestedBooks[j] {
                repeated = true
                print("El libro \(requestedBooks[i].id) fue entregado más de una vez.")
            }

        }
    }

    if !repeated {
        print("Todos los libros fueron diferentes.")
    }
}

/*
 Este ejercicio está pensado para practicar el patrón Flyweight (Peso Ligero), ya que la editorial puede reutilizar libros existentes o crear nuevos.

 Paso 1. Analizar el problema

 Tenemos tres elementos:

 Libro (Book): representa un libro.
 Editorial (PublishingHouse): administra el inventario de libros.
 Usuario (User): solicita libros.

 La editorial:

 Comienza con 10 libros.
 Cada vez que un usuario solicita un libro:
 50% de probabilidad de entregar un libro existente.
 50% de probabilidad de crear un libro nuevo y agregarlo al inventario.

 Finalmente debemos comprobar si alguno de los 5 libros entregados es exactamente el mismo objeto.

 Paso 2. Clase Book
 class Book {
     let id: Int

     init(id: Int) {
         self.id = id
     }
 }
 Paso 3. Clase PublishingHouse
 class PublishingHouse {

     private var books: [Book] = []
     private var nextId = 1

     init() {
         for _ in 1...10 {
             books.append(Book(id: nextId))
             nextId += 1
         }
     }

     func getBook() -> Book {

         let random = Int.random(in: 0...1)

         if random == 0 {
             // Crear un libro nuevo
             let newBook = Book(id: nextId)
             nextId += 1
             books.append(newBook)
             return newBook
         } else {
             // Regresar un libro existente
             return books.randomElement()!
         }
     }
 }
 Paso 4. Solicitar 5 libros
 let publishingHouse = PublishingHouse()

 var requestedBooks: [Book] = []

 for _ in 1...5 {
     let book = publishingHouse.getBook()
     requestedBooks.append(book)
     print("Libro recibido: \(book.id)")
 }
 Paso 5. Verificar si algún libro se repitió

 Como queremos saber si es el mismo objeto, usamos el operador ===.

 var repeated = false

 for i in 0..<requestedBooks.count {
     for j in (i + 1)..<requestedBooks.count {

         if requestedBooks[i] === requestedBooks[j] {
             repeated = true
             print("El libro \(requestedBooks[i].id) fue entregado más de una vez.")
         }

     }
 }

 if !repeated {
     print("Todos los libros fueron diferentes.")
 }
 
 ***********************************************
 Posible salida
 Libro recibido: 3
 Libro recibido: 8
 Libro recibido: 11
 Libro recibido: 3
 Libro recibido: 12

 El libro 3 fue entregado más de una vez.

 Este ejemplo demuestra el uso del operador ===, que en Swift verifica si dos variables apuntan a la misma instancia de un objeto, un aspecto fundamental cuando se implementa el patrón Flyweight.
 */
