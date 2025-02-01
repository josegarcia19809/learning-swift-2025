//
//  dictionaryPark.swift
//  Swift 2025
//
//  Created by Jose Garcia on 01/02/25.
//


/*
 You manage an amusement park, and you have a dictionary that stores dates and attendance.
 var attendance = ["23/09": 2837, "24/09": 3729, "25/09": 2261]
 Add a value for 26 Sept.
 How many people attended in total on 25 and 26 Sept?
 Is data for 22 Sept available?
 */
func dictionaryPark() {
    var attendance = ["23/09": 2837, "24/09": 3729, "25/09": 2261]

    attendance["26/09"] = 6739

    let total = (attendance["25/09"] ?? 0) + (attendance["26/09"] ?? 0)
    print("On 25 and 26 sept there \(total) attendees")

    print(attendance["22/09"] ?? "No hay registro de esa fecha")

    print("Do we have data for 22 sept? \(attendance.keys.contains("23/09"))")
}
