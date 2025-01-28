//
//  arrayPrintColors.swift
//  Swift 2025
//
//  Created by Jose Garcia on 27/01/25.
//

/*
 A printer needs the colors red, green and blue to print
 A printer on your desk has the following colors available
 let availableColors = ["red", "blue"]
 Design a program that prints out a boolean value, on whether or not the printer can print.
 */

func arrayPrintColors(){
    let neededColors = ["red", "green" , "blue"]
    let availableColors = ["red", "blue"]
    
    let canPrinted =  neededColors.contains(availableColors)
    print("The printer can print: \(canPrinted)")
}
