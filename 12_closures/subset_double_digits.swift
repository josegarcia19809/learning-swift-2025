//
//  subset_double_digits.swift
//  Swift 2025
//
//  Created by Jose Garcia on 16/06/26.
//

/*
 Given a set of random integers, print out a subset that consists only
 of double digit integers
 */

func subset_double_digits() {
    let numbers = (1 ... 10).map { _ in
        Int.random(in: 1 ... 1000)
    }
    print(numbers)

    let subset = numbers.filter {
        $0 >= 10 && $0 <= 99
    }
    print(subset)
}
