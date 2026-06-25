//
//  ProductoInicializadorFallable.swift
//  Swift 2025
//
//  Created by Jose Garcia on 24/06/26.
//

func productoInicializadorFallableApp() {
    // Estructura que representa un producto.
    struct Producto {
        // Propiedades
        var nombre: String
        var precio: Double

        /// --------------------------------------------------------
        /// Inicializador fallable
        ///
        /// Solo permite crear un producto si:
        /// - El nombre no está vacío.
        /// - El precio es mayor que cero.
        /// --------------------------------------------------------
        init?(nombre: String, precio: Double) {
            // Validar que el nombre tenga contenido.
            if nombre.isEmpty {
                print("Error: El nombre no puede estar vacío.")
                return nil
            }

            // Validar que el precio sea positivo.
            if precio <= 0 {
                print("Error: El precio debe ser mayor que cero.")
                return nil
            }

            // Si todas las validaciones son correctas,
            // se asignan los valores a las propiedades.
            self.nombre = nombre
            self.precio = precio
        }

        /// --------------------------------------------------------
        /// Inicializador que utiliza delegación.
        ///
        /// Como llama a un inicializador fallable,
        /// también debe declararse como fallable (init?).
        ///
        /// Este inicializador crea un producto con un
        /// precio predeterminado de $100.
        /// --------------------------------------------------------
        init?(nombre: String) {
            // Delegación al inicializador principal.
            self.init(nombre: nombre, precio: 100.0)
        }

        /// Método para mostrar la información del producto.
        func mostrarInformacion() {
            print("Producto: \(nombre)")
            print("Precio: $\(precio)")
        }
    }

    // ============================================================
    // Programa principal
    // ============================================================

    // Crear un producto válido utilizando el inicializador principal.
    print("Producto 1")

    if let producto1 = Producto(nombre: "Laptop", precio: 25000) {
        producto1.mostrarInformacion()
    }

    print("\n-----------------------")

    // Crear un producto utilizando el inicializador
    // que delega al inicializador principal.
    print("Producto 2")

    if let producto2 = Producto(nombre: "Mouse") {
        producto2.mostrarInformacion()
    }

    print("\n-----------------------")

    // Intentar crear un producto con un nombre vacío.
    // El inicializador fallará y devolverá nil.
    print("Producto 3")

    if let producto3 = Producto(nombre: "", precio: 500) {
        producto3.mostrarInformacion()
    } else {
        print("No fue posible crear el producto.")
    }

    print("\n-----------------------")

    // Intentar crear un producto con un precio inválido.
    print("Producto 4")

    if let producto4 = Producto(nombre: "Teclado", precio: -1500) {
        producto4.mostrarInformacion()
    } else {
        print("No fue posible crear el producto.")
    }
}
