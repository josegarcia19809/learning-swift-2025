//
//  labelsBreakContinue.swift
//  Swift 2025
//
//  Created by Jose Garcia on 22/01/25.
//

func labelsBreak() {
    loop: for i in 1...5 {
        for j in 1...5 {
            if i % 3 == 0 {
                break loop
            }
            print("\(i), \(j)\t", terminator: "")
        }
        print()
    }
}


func labelsContinue() {
    loop: for i in 1...5 {
        for j in 1...5 {
            if i % 3 == 0 {
                continue loop
            }
            print("\(i), \(j)\t", terminator: "")
        }
        print()
    }
}
