//
//  forLoop.swift
//  Swift 2025
//
//  Created by Jose Garcia on 21/01/25.
//

func forLoop(){
    let months = [
        1: "January",
        2: "February",
        3: "March"
    ]
    
    for key in months.keys.sorted(){
        print("Month #\(key) is called \(months[key] ?? "")")
    }
}
