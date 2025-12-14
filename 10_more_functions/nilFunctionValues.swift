//
//  nilFunctionValues.swift
//  Swift 2025
//
//  Created by Jose Garcia on 14/12/25.
//

import Foundation

func isPositive(_ number: Int?)-> Bool? {
    if let number = number {
        return number > 0
    }
    return nil
}

func nilFunctionValues(input: String?){
    // Si el input es nil, pasa nil a isPositive
    guard let input = input else {
        print(isPositive(nil) as Any)
        return
    }
    // Int(_:) ya produce Int?; esto cubre strings no numéricos
    print(isPositive(Int(input)) as Any)
}
