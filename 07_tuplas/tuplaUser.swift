//
//  tuplaUser.swift
//  Swift 2025
//
//  Created by Jose Garcia on 26/01/25.
//

/*
 You receive a tuple from a 3rd party library containing user data: name, email and account number
 let userInfo = ("Alex", "alex@gmail.com", 273615)
 Print out the user's name followed by the account number
 */

func imprimirInfoTupla() {
    let userInfo = (name: "Alex", email: "alex@gmail.com", accountNumber: 273615)
    print("The username is \(userInfo.name), and his account number is \(userInfo.accountNumber)")
}
