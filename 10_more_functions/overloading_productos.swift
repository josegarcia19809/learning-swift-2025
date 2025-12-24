//
//  overloading_productos.swift
//  Swift 2025
//
//  Created by Jose Garcia on 24/12/25.
//

import Foundation

/*
 Create a function that takes a product name and price. It adds 20% tax to that product and
 displays a message saying how much the product costs.

 Overload the function so that it takes a map of products and prices, and does the same thing.

 Call both functions in your program.


 */

func calculatePriceWithTaxes(product: String, price: Double) {
    let tax: Double = 0.2
    let total: Double = price + (price * tax)
    print("The price of \(product) is \(total)")
}

func calculatePriceWithTaxes(products: [String: Double]) {
    for (product, price) in products {
        calculatePriceWithTaxes(product: product, price: price)
    }

}

func calculatePriceWithTaxesApp() {
    // Llamada con un solo producto
    calculatePriceWithTaxes(product: "Café", price: 50.0)

    // Llamada con varios productos
    let carrito = [
        "Pan dulce": 25.0,
        "Leche": 30.0,
        "Galletas": 20.0,
    ]
    calculatePriceWithTaxes(products: carrito)
}
