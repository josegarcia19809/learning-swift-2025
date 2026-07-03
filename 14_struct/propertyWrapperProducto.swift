//
//  propertyWrapperProducto.swift
//  Swift 2025
//
//  Created by Jose Garcia on 03/07/26.
//

func propertyWrapperProductoApp() {
    @propertyWrapper
    struct NonNegative {
        private var value = 0

        var wrappedValue: Int {
            get { value }
            set { value = max(0, newValue) }
        }
    }

    struct Producto {
        @NonNegative var stock: Int
        @NonNegative var vendidos: Int
    }

    var producto = Producto()
    producto.stock = 10
    producto.vendidos = 5
    print("Stock inicial: \(producto.stock)")
    print("Vendidos inicial: \(producto.vendidos)")

    producto.stock = -1
    print("Stock modificado: \(producto.stock)")
}
