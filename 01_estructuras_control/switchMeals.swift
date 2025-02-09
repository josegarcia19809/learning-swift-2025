//
//  switchMeals.swift
//  Swift 2025
//
//  Created by Jose Garcia on 09/02/25.
//

/*
 Assume that 3 meals a day is the recommended amount.
 Ask the user to input the number of meals they have every day.
 Based on the input, print out a message that encourages the user to increase or
 decrease the number of meals they have.
 */

func switchMeals(){
    print("How many meals do you have? ")
    let meals = Int(readLine() ?? "") ?? 0
    
    switch(meals){
        case 0..<3:
        print("You should eat more meals a day!")
    case 3:
        print("You are eating enough meals!")
    default:
        print("You should eat less meals a day!")
    }
}
