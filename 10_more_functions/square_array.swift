//
//  square_array.swift
//  Swift 2025
//
//  Created by Jose Garcia on 02/06/26.
//

// Create a function that receives an array of numbers, and calculates the squared values of those numbers.

// Call the function and print the values before and after.

func squareArray(array: [Int]) -> [Int] {
    return array.map { $0 * $0 }
}

func squareValues(_ numbers: inout [Int]) {
    for i in 0 ..< numbers.count {
        numbers[i] *= numbers[i]
    }
}

func squareArray_app() {
    let array: [Int] = [1, 2, 3, 4, 5]
    let squaredArray = squareArray(array: array)
    print(array)
    print(squaredArray)
    imprimirLinea()

    var myNumbers: [Int] = []
    for _ in 1 ... 10 {
        myNumbers.append(Int.random(in: 1 ... 10))
    }
    print("Before squaring \(myNumbers)")
    squareValues(&myNumbers)
    print("After squaring \(myNumbers)")
}
