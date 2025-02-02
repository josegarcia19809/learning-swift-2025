//
//  rangePlant.swift
//  Swift 2025
//
//  Created by Jose Garcia on 02/02/25.
//

/*
 A certain plant has to be watered only once every 3 days.
 Ask the user to enter a number from 1 to 12 representing a calendar month.
 Print out which days the plant must be watered in that month
 */
func rangePlant() {
    print("Give the number of the month:")
    let month = Int(readLine() ?? "") ?? -1

    if (month < 1 || month > 12) {
        return
    }

    let waterFrequency = 3
    var days = 31
    if month == 2 {
        days = 28
    } else if ([4, 6, 9, 11].contains(month)) {
        days = 30
    }

    let waterDays = stride(from: 1, through: days, by: waterFrequency)
    print(Array(waterDays))
}
