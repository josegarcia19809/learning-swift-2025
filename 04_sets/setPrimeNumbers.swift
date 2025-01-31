//
//  setPrimeNumbers.swift
//  Swift 2025
//
//  Created by Jose Garcia on 30/01/25.
//

/*
 You have a set of the first 10 prime numbers.
 [2, 3, 5, 7, 11, 13, 17, 19, 23, 29]
 Is the number 21 a prime number? Print out the result.
 Is the number 13 a prime number? Print out the result.
 */
func setPrimeNumbers() {
    let primeNumbers: Set<Int> = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29]
    print("Is the number 21 a prime number? \(primeNumbers.contains(21))")
    print("Is the number 13 a prime number? \(primeNumbers.contains(13))")
}
