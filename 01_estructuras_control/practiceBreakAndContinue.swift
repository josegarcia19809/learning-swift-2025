//
//  practiceBreakAndContinue.swift
//  Swift 2025
//
//  Created by Jose Garcia on 22/01/25.
//

func practiceBreakAndContinue() {
    let limit = 1000
    var numbers = [Int]()

    for i in 1...limit {
        numbers.append(i)
    }

    numbers.shuffle()

    let searchValue = Int.random(in: 1...limit)
    print("Search values is \(searchValue)")

    for i in 0...numbers.count - 1 {
        if numbers[i] == searchValue {
            print("The index is \(i)")
            break
        }
    }
}


/*
 A group of young people are going to a nightclub. They each have an age (random value from 1 to 30).
 The program displays a welcome message for each user.
 If a client's age is lower than 18, it prints a message that this client is not allowed.
 If more than 20 people are accepted, the nightclub reaches capacity and the execution must stop.
 */

func clientAgeClub() {
    var i = 0
    var acceptedClients = 0
    while true {
        i += 1
        let client = "Client \(i)"
        let age = Int.random(in: 1...30)
        if age < 18 {
            print("\(client) with age \(age) cannot enter the club")
            continue
        }

        print("Welcome \(client) with age \(age) to the club")
        acceptedClients += 1
        if acceptedClients == 20 {
            print("Club has reached capacity")
            break
        }
    }
}
