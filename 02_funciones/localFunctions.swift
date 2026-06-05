//
//  localFunctions.swift
//  Swift 2025
//
//  Created by Jose Garcia on 05/06/26.
//

func listaAnimales() {
    func soloUnAnimal(animal: String) {
        print("Tengo un \(animal)")
    }
    let misAnimales = ["Perro", "Gato", "Conejo"]
    for animal in misAnimales {
        soloUnAnimal(animal: animal)
    }
}

func listaAnimalesApp() {
    listaAnimales()
}
