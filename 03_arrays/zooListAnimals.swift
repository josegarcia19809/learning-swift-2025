//
//  zooListAnimals.swift
//  Swift 2025
//
//  Created by Jose Garcia on 27/01/25.
//


/*
 A zoo has a list of animals.
 var animals = ["lion" , "zebra" , "chimp", "elephant"]
 A new panda bear cub has arrived.
 Print out the new list of animals.
 The lion has been sold to a different zoo.
 Print out the new list of animals.
 Does the zoo have both elephants and giraffes?
 */
func zooListAnimals() {
    var animals = ["lion", "zebra", "chimp", "elephant"]
    animals.append("panda")
    print(animals)

    animals.remove(at: animals.firstIndex(of: "lion")!)
    print(animals)

    let containsElephantsAndGiraffes = animals.contains(["elephant", "giraffe"])
    let containBoth = animals.contains("elephant") && animals.contains("giraffe")
    print("Does the zoo have both elephants and giraffes? \(containsElephantsAndGiraffes)")
    print(containBoth)
}
