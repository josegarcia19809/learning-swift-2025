//
//  biggest_middle_digit.swift
//  Swift 2025
//
//  Created by Jose Garcia on 16/06/26.
//

/*
 Given a list of 3 digits integers.
 Print out the integer thas has the biggest middle digit
 */

func biggestMiddleDigit() {
    let lista: [Int] = [193, 456, 789]

    let result: Int = lista.max { a, b -> Bool in
        let middleDigitLHS = (a / 10) % 10
        let middleDigitRHS = (b / 10) % 10
        return middleDigitLHS < middleDigitRHS
    } ?? 0

    print(result)
}
