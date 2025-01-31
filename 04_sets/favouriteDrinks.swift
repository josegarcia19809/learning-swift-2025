//
//  favouriteDrinks.swift
//  Swift 2025
//
//  Created by Jose Garcia on 30/01/25.
//

/*
 Your favourite drinks are
 ["water", "coke", "beer", "orange juice"]
 Your partner's favourite drinks are
 ["water", "orange juice", "pineapple juice", "milk"]
 If you want to buy a drink that you both can enjoy, what are the options you have? Print out the result.
 If you want to buy a drink that only you would drink, what are the options you have?
 */
func favouriteDrinks() {
    let myDrinks: Set<String> = ["water", "coke", "beer", "orange juice"]
    let herDrinks: Set<String> = ["water", "orange juice", "pineapple juice", "milk"]

    print("drinks that you both can enjoy: \(myDrinks.intersection(herDrinks))")
    print("drinks that only you would drink: \(myDrinks.subtracting(herDrinks))")

}
