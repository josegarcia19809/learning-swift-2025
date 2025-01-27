//
//  customersArray.swift
//  Swift 2025
//
//  Created by Jose Garcia on 26/01/25.
//

/*
 Create an array of customers to your online store and add some customers.
 A new customer has signed up, add them to the array.
 A customer has chosen to close their account. Remove them from the array.
 */
func customersArray() {
    var customers: Array<String> = ["Laura", "Diana", "Roberto", "Carolina"]
    print("Write the new customer's name: ")
    let newClient = readLine()!
    customers.append(newClient)
    print(customers)

    print("Write the customer's name that leaves: ")
    let removeClient = readLine()!
    customers.remove(at: customers.firstIndex(of: removeClient)!)
    print(customers)
}
