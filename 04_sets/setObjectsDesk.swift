//
//  setObjectsDesk.swift
//  Swift 2025
//
//  Created by Jose Garcia on 29/01/25.
//

/*
 Create a set of the objects that are on your desk at the moment.
 How many objects do you have?
 Remove the first element in that set.
 Print out the remaining elements.
 */
func setObjectsDesk(){
    var items: Set<String> = ["laptop", "mouse", "mic", "phone", "coffe"]
    print(items)
    print("I have \(items.count) objects")
    
    items.removeFirst()
    print(items)
}
