//
//  agregarImpuesto.swift
//  Swift 2025
//
//  Created by Jose Garcia on 25/01/25.
//

/*
 Create a function that receives the price of a product, adds 20% tax and returns the result.
 These are the products in your online store.
 let products = ["Shoes": 9.99, "Socks": 5.99, "Jeans": 39.99]
 Print out the final price for each product.
 */

func addTax(price: Double) -> Double {
    return price * 1.2
}

func addTaxPrueba() {
    let products = ["Shoes": 9.99, "Socks": 5.99, "Jeans": 39.99]
    for (product, price) in products {
        print("The product \(product) had a price of \(price). Now it costs \(addTax(price: price))")
    }
}
