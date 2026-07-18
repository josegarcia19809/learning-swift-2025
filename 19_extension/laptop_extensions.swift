//
//  laptop_extensions.swift
//  Swift 2025
//
//  Created by Jose Garcia on 18/07/26.
//

class Laptop {
    var brand: String

    init(brand: String) {
        self.brand = brand
    }
}

/**
 La extensión agrega un nuevo método llamado displayBrand().

 Observa que no fue necesario modificar la clase Laptop.
 */
extension Laptop {
    func displayBrand() {
        print("This is a \(brand) laptop.")
    }
}

func laptop_extensionsApp() {
    let myLaptop = Laptop(brand: "Apple")
    myLaptop.displayBrand()
}
