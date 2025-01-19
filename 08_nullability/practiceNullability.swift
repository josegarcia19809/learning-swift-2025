//
//  practiceNullability.swift
//  Swift 2025
//
//  Created by Jose Garcia on 18/01/25.
//

func practiceNullability(){
    print("Write a number: ")
    let userInput = Int(readLine()!) ?? 0
    let result = userInput * 5
    print("The result is \(result)")
    
}


func nombreNoNulo(){
    let userName: String? = nil
    guard let user = userName else {return}
    print(user)
}
