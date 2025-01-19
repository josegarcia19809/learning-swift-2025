//
//  Challenge.swift
//  Swift 2025
//
//  Created by Jose Garcia on 18/01/25.
//

/*
 A product costs 29.99.

 Ask a user how many products they want to buy.

 If the read value is nil, use the default of 1.

 Print the total of the purchase.
 */

func challengePrintCost(){
    let cost = 29.99
    print("How many products do you want to buy? ")
    let amount = Double(readLine()!) ?? 1
    
    let total = cost * amount
    print("The total is \(total)")
}
