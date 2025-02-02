//
//  rangePositiveNumbers.swift
//  Swift 2025
//
//  Created by Jose Garcia on 02/02/25.
//

/*
 Print out all the positive numbers divisible by 17 smaller than 1000
 */

func rangePositiveNumbers() {
    for number in (0...1000) {
        if (number % 17 == 0) {
            print(number, terminator: " ")
        }
    }
    
    print()
    imprimirLinea()
    
    let numbers = stride(from: 0, through: 1000, by: 17)
    print(type(of: numbers))
    print(Array(numbers))
}
