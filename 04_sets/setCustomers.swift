//
//  setCustomers.swift
//  Swift 2025
//
//  Created by Jose Garcia on 29/01/25.
//

/*
 You have a set of customers for your online store.
 A new customer has joined.
 Print the set of customers.
 A customer has chosen to leave.
 Print the set of customers.
 */
func setCustomers() {
    var customers: Set<String> = ["Carol", "Lety", "Roberto"]
    let newCustomer = "José"
    customers.insert(newCustomer)
    print(customers)

    customers.remove("Carol")
    print(customers)
}
