//
//  introTuplas.swift
//  Swift 2025
//
//  Created by Jose Garcia on 25/01/25.
//

func introTuplas() {
    let items: (Int, String, String, Bool) = (80, "www", "google.com", true)
    print(items)

    print(items.0)
    print(items.2)

    imprimirLinea()
    let item = (product: "Laptop", price: 999.99)
    print(item)
    print(item.product)
    print(item.price)

    imprimirLinea()
    var person = ("Carolina", 1980, 185.00)
    print(person)

    person.2 = 190
    print(person)

}
