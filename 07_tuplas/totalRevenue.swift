//
//  totalArticulos.swift
//  Swift 2025
//
//  Created by Jose Garcia on 26/01/25.
//
/*
 Your business has 3 physical stores. Your accounting software generates a 3-tuple that contains
 2-tuple elements with store name and total revenue.
 (( "Downtown" , 30274), ("West side" , 47102), ("East side" , 28936))
 Print out the total revenue of all stores.
 Create a new tuple that only contains store names and print it to the console.
 */

func calcularTotalVentas() {
    let productos = (("Downtown", 30274), ("West side", 47102), ("East side", 28936))

    var total = 0
    total = productos.0.1 + productos.1.1 + productos.2.1
    print("The total is \(total)")

    let storeNames = (productos.0.0, productos.1.0, productos.2.0)
    print(storeNames)
}
