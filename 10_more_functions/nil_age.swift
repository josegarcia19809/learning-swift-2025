//
//  nil_age.swift
//  Swift 2025
//
//  Created by Jose Garcia on 18/12/25.
//

import Foundation


/*
 Ask the user to input their age.

 Based on their age suggest an activity that is appropriate for their age group: child, teen or adult.
 */

func activityAge(age: Int?)->String? {
    if let age = age{
        if age < 13 {
            return "Go to the playground"
        }else if age < 18 {
            return "Go to the cinema"
        }else if age < 50{
            return "Go to the work"
        }
    }
    return nil
}

func activityAgePractice(input: String){
    let age = Int(input)
    print(activityAge(age: age) ?? "No option")
}
