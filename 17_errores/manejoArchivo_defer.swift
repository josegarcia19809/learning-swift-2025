//
//  manejoArchivo_defer.swift
//  Swift 2025
//
//  Created by Jose Garcia on 16/07/26.
//

/**

 A FileHandler class has functionality to open and read a file (simulated by printing statements to the console). The open file function can throw errors, and must always make sure to close the file when reading is finished.

 Una clase FileHandler tiene la funcionalidad de abrir y leer un archivo (simulado mediante mensajes en la consola). La función para abrir el archivo puede generar errores y siempre debe asegurarse de cerrar el archivo cuando termine la lectura.

 Write a function that calls the functionality of the file handler and manages any errors that might occur.

 Escribe una función que utilice la clase FileHandler y maneje cualquier error que pueda ocurrir.
 */
func manejoArchivo_deferApp() {
    enum FileError: Error {
        case filenotFound
    }

    class FileHandler {
        func openFile(nombre: String) throws {
            print("Abriendo archivo")
            defer {
                print("Cerrando archivo...")
            }

            defer {
                print("Cerrando el programa...")
            }

            guard nombre == "datos.txt" else {
                throw FileError.filenotFound
            }

            print("Leyendo archivo...")
            print("Contenido del archivo")
        }
    }

    func leerArchivo() {
        let fileHandler = FileHandler()
        do {
            try fileHandler.openFile(nombre: "datoss.txt")
            print("Lectura finalizada correctamente")
        } catch FileError.filenotFound {
            print("Error: Archivo no encontrado")
        }

        catch {
            print("Ocurrió un error inesperado")
        }
    }

    leerArchivo()
}
