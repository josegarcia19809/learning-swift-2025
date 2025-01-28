//
//  arrayWinners.swift
//  Swift 2025
//
//  Created by Jose Garcia on 27/01/25.
//

/*
 This is the list of winners of the men's 100m race.
 let winners = ["Usain", "John", "Michael", "Alex", "Bob"]
 What place did Michael finish on?
 */
func arrayWinners() {
    let winners = ["Usain", "John", "Michael", "Alex", "Bob"]
    print(winners)
    let index = winners.firstIndex(of: "Michael") ?? -1
    print("Michael finish on \(index + 1)th")

}
