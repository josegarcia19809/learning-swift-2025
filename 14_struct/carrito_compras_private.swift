//
//  carrito_compras_private.swift
//  Swift 2025
//
//  Created by Jose Garcia on 24/06/26.
//

/*
 Un carrito de compras almacena una lista de artículos que el usuario desea comprar,
 así como el precio total de dichos artículos.

 Expone funcionalidades para agregar y eliminar un artículo, y para mostrar el precio total.

 La lista de artículos y el precio total no pueden manipularse directamente.
 Además, una función para mostrar todos los artículos del carrito puede llamarse internamente,
 pero no externamente.

 Implementa esto en código, agrega y elimina algunos artículos, y muestra los artículos finales j
 unto con el precio total.

 */

func carritoComprasApp() {
    struct Carrito {
        private var articulos: [String: Double]
        private var precioTotal: Double

        init() {
            articulos = [:]
            precioTotal = 0.0
        }

        mutating func agregarArticulo(_ articulo: String, precio: Double) {
            articulos[articulo] = precio
            precioTotal += precio
        }

        mutating func eliminarArticulo(_ articulo: String) {
            guard let removedPrice = articulos.removeValue(forKey: articulo) else {
                print("Error: Item \(articulo) no found in the cart")
                return
            }
            precioTotal -= removedPrice
            print("Removed \(articulo) from the cart. Total price: \(precioTotal)")
        }

        func mostrarArticulos() {
            print(articulos)
        }

        func mostrarPrecioTotal() {
            print(precioTotal)
        }
    }

    var carrito = Carrito()
    carrito.agregarArticulo("Laptop", precio: 3000)
    carrito.agregarArticulo("Auriculares", precio: 1000)

    carrito.mostrarArticulos()
    carrito.mostrarPrecioTotal()

    carrito.eliminarArticulo("Laptop")
    carrito.mostrarArticulos()
    carrito.mostrarPrecioTotal()
}
