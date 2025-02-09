//
//  dateComponent.swift
//  Swift 2025
//
//  Created by Jose Garcia on 09/02/25.
//

import Foundation

func dateComponent() {
    let date = Date()
    let calendar = Calendar.current
    let year = calendar.component(.year, from: date)
    print("Year: \(year)")

    let month = calendar.component(.month, from: date)
    let day = calendar.component(.day, from: date)
    let hour = calendar.component(.hour, from: date)
    let minute = calendar.component(.minute, from: date)
    let second = calendar.component(.second, from: date)
    print("Date: \(day)/\(month)/\(year) \(hour):\(minute):\(second)")

    let modifiedDate = calendar.date(byAdding: .day, value: 1, to: date) ?? date
    print(modifiedDate)
}
