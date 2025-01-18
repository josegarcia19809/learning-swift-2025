//
//  guards.swift
//  Swift 2025
//
//  Created by Jose Garcia on 18/01/25.
//

func guards(){
    let name: String? = "jose"
    guard let user = name else {return}
    print(user)
}


func nilGuards(){
    let amount = Int("12")
    guard let amount = amount else {return}
    print(amount * 2)
}
