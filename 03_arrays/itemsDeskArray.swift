//
//  itemsDeskArray.swift
//  Swift 2025
//
//  Created by Jose Garcia on 26/01/25.
//

/*
 You have a number of items on your desk.
 "laptop" , "mouse", "pen" , "paper", "phone"
 You clean up your desk and remove as many items as you can to be more productive.
 "pen", "paper", "phone"
 Print out the remaining items.
 */

func itemsDeskArray() {
    var items = ["laptop", "mouse", "pen", "paper", "phone"]
    let cleanupItems = ["pen", "paper", "phone"]
    print(items)

    items.remove(at: items.firstIndex(of: cleanupItems[0])!)
    items.remove(at: items.firstIndex(of: cleanupItems[1])!)
    items.remove(at: items.firstIndex(of: cleanupItems[2])!)

    print(items)

    items.append(contentsOf: cleanupItems)
    print(items)

    items.removeAll { item in
        cleanupItems.contains(item)
    }

    print(items)

}
