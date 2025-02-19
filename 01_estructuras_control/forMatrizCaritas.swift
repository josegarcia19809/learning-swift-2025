//
//  forMatrizCaritas.swift
//  Swift 2025
//
//  Created by Jose Garcia on 19/02/25.
//
/*
 Ask the user for a number.
 Print out a square matrix of the size indicated by the number.
 Inside each cell, print out 1 emoji
 😄 If the row+column is divisible by 3
 😎 If the row+column % 3 is 1
 😭 If the row+column % 3 is 2
 */
func forMatrizCaritas() {
    print("Enter a number:")
    let number = Int(readLine() ?? "") ?? 0
    for i in 1...number {
        for j in 1...number {
            let sum = i + j
            if sum % 3 == 0 {
                print("😄", terminator: "")
            } else if sum % 3 == 1 {
                print("😎", terminator: "")
            } else {
                print("😭", terminator: "")
            }
        }
        print()
    }
    imprimirLinea()

    for i in 1...number {
        for j in 1...number {
            switch (i + j) % 3 {
            case 0:
                print("😄", terminator: "")
            case 1:
                print("😎", terminator: "")
            default:
                print("😭", terminator: "")
            }

        }
        print()
    }
}

