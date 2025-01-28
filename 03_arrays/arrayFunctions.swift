//
//  arrayFunctions.swift
//  Swift 2025
//
//  Created by Jose Garcia on 27/01/25.
//

func arrayFunctions() {
    let colors = ["blue", "red", "blue", "green"]
    print(colors.isEmpty)
    print(colors.count)
    
    print(colors.contains("red"))
    print(colors.contains("pink"))
    
    print(colors.firstIndex(of: "blue") ?? -1)
    print(colors.lastIndex(of: "blue") ?? -1)
    print(colors.lastIndex(of: "gray") ?? -1)
}
