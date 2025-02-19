//
//  forDivisibleBy7.swift
//  Swift 2025
//
//  Created by Jose Garcia on 19/02/25.
//

/*
 Ask the user to input a number. Call it maxValue.
 Print out every positive number smaller than max Value that is divisible by 7, in descending order.
 */
func forDivisibleBy7() {
    print("Enter a number: ")
    let maxValue: Int = Int(readLine() ?? "0") ?? 0

    for number in stride(from: maxValue, to: 0, by: -1) {
        if number % 7 == 0 {
            print(number, terminator: " ")
        }
    }
    print()
    imprimirLinea()

    for number in stride(from: maxValue, to: 0, by: -1) where number % 7 == 0 {
        print(number, terminator: " ")
    }
    print()
    imprimirLinea()
}
