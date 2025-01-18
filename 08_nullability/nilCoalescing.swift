//
//  nilCoalescing.swift
//  Swift 2025
//
//  Created by Jose Garcia on 18/01/25.
//

func nilCoalescing(){
    var catName: String? = nil
    print(catName ?? "This cat has not a name")
    
    catName = "Mixi"
    print(catName ?? "This cat has not a name")
    
    let myCat = catName ?? "Fluffy"
    print(myCat)
}
