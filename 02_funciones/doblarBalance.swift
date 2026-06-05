//
//  doblarBalance.swift
//  Swift 2025
//
//  Created by Jose Garcia on 05/06/26.
//

/*
 Create a function that takes a map of users and their bank balance.
 Inside create a function that takes a number and returns its double.
 Double each user’s bank balance and print out a statement

 */

func listaUsuarios(userBalances: [String: Double]) {
    func doublevalue(_ number: Double) -> Double {
        return number * 2
    }
    for (user, balance) in userBalances {
        print("\(user) has a balance of \(doublevalue(balance))")
    }
}

func listaUsuariosApp() {
    listaUsuarios(userBalances: ["Carolina": 1200.0, "Pedro": 600.0, "Ana": 1000.0])
}
