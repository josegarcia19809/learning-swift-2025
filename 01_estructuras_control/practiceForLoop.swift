//
//  practiceForLoop.swift
//  Swift 2025
//
//  Created by Jose Garcia on 21/01/25.
//

func ciclosForCustomers(){
    let customers = ["Alice": 4, "Judy": 8, "Anna": 6]
    
    for customer in customers{
        print("Hello \(customer.key) you bought \(customer.value) items")
    }
}
