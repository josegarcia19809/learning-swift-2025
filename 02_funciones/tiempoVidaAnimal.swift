//
//  tiempoVidaAnimal.swift
//  Swift 2025
//
//  Created by Jose Garcia on 25/01/25.
//


/*
 Create a function that receives the name of an animal, and returns the estimated lifespan.
 cats -> 15
 dogs -> 10
 rabbit -> 12
 everything else -> 20
 Ask the user to input an animal, then print out the estimated lifespan for that animal.
 */

func tiempoVidaAnimal(nameAnimal: String) -> Int {
    switch (nameAnimal) {
    case "cat":
        return 15
    case "dog":
        return 10
    case "rabbit":
        return 12
    default:
        return 20

    }
}


func tiempoVidaAnimalPrueba() {
    let animals = ["cat", "dog", "rabbit", "bear", "frog"]
    for _ in 1...5 {
        let value = Int.random(in: 0...4)
        let theAnimal = animals[value]
        print("The animal \(theAnimal) lives \(tiempoVidaAnimal(nameAnimal: theAnimal)) years")
    }
}




