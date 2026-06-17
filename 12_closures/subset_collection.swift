//
//  subset_collection.swift
//  Swift 2025
//
//  Created by Jose Garcia on 16/06/26.
//

/*
 Given a collection of random integers.

 If a number is odd, double it.

 If a number is even, halve it.

 Print out a subset of the collection that has numbers greater than 50.
 */

func subsetCollection() {
    let numbers = (1 ... 10).map { _ in
        Int.random(in: 1 ... 100)
    }
    print(numbers)
    let subset = numbers.map {
        if $0.isMultiple(of: 2) {
            $0 / 2
        } else {
            $0 * 2
        }
    }
    print(subset)

    let subsetGreaterThan50 = subset.filter {
        $0 > 50
    }
    print(subsetGreaterThan50)
}

func subsetCollection2() {
    let randomIntegers = Array(repeating: (), count: 20)
        .map { _ in
            Int.random(in: 1 ... 100)
        }
    print(randomIntegers)

    let resultArray = randomIntegers.map {
        $0 % 2 == 1 ? $0 * 2 : $0 / 2
    }
    .filter { $0 > 50 }
    print(resultArray)
}
