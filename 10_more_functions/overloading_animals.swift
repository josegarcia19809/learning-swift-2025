//
//  overloading_animals.swift
//  Swift 2025
//
//  Created by Jose Garcia on 24/12/25.
//

import Foundation

/*
 Create an overloaded function that takes either an animal or a list of animals.
 It then prints out a message to feed each animal.

 */

func feedAnimal(animal: String) {
    print("Feed the animal \(animal)")
}

func feedAnimal(_ animals: [String]) {
    for animal in animals {
        feedAnimal(animal: animal)
    }
}

func feedAnimalApp() {
    feedAnimal(animal: "Dolphin")
    feedAnimal(["Dog", "Cat", "Bird"])
}
