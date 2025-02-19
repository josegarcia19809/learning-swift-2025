//
//  switchTimeofDay.swift
//  Swift 2025
//
//  Created by Jose Garcia on 19/02/25.
//

/*
 Assuming, based on the hour of the day
 6 to 11 -> morning
 12 to 14 -> noon
 15 to 17 -> afternoon
 18 to 21 -> evening
 22 to 5 -> night
 Ask the user to input the current hour.
 Print out a message to specify the time of day.
 */
func switchTimeofDay() {
    var tod = ""
    print("Write the hour: ")
    let hour = Int(readLine() ?? "") ?? 0
    switch (hour) {
    case 6...11: tod = "morning"
    case 12...14: tod = "noon"
    case 15, 16, 17: tod = "afternoon"
    case _ where (18...21).contains(hour): tod = "evening"
    default: tod = "night"
    }
    print("At \(hour):00 it is \(tod)")
}











