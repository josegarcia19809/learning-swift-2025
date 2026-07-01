//
//  carrito.swift
//  Swift 2025
//
//  Created by Jose Garcia on 30/06/26.
//

/*
 Un cliente de una tienda en línea puede agregar productos a su carrito. También tiene acceso al precio total de todos los productos que se encuentran en su carrito.

 Implementa esto en código, agrega algunos productos y muestra el precio total.
 */

func carritoApp() {
    struct Producto {
        var nombre: String
        var precio: Double
    }

    struct Carrito {
        var productos: [Producto] = []

        var precioTotal: Double {
            return productos.reduce(0) { $0 + $1.precio }
        }

        mutating func agregarProducto(_ producto: Producto) {
            productos.append(producto)
        }
    }

    let producto1 = Producto(nombre: "Manzana", precio: 1.20)
    let producto2 = Producto(nombre: "Cebolla", precio: 2.50)

    var carrito = Carrito()
    carrito.agregarProducto(producto1)
    carrito.agregarProducto(producto2)

    print("Total del carrito: \(carrito.precioTotal)")
}
