//
//  DateFormatter.swift
//  Swift 2025
//
//  Created by Jose Garcia on 09/02/25.
//

import Foundation

func dateFormatter() {
    let currentDate = Date()
    let formatter = DateFormatter()

    formatter.dateFormat = "MMMM d, yyyy 'at' h:mm a"
    let dateString = formatter.string(from: currentDate)
    print(dateString) // febrero 9, 2025 at 6:55 a.m.

    formatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
    let dateFromString = formatter.string(from: currentDate)
    print(dateFromString) // 2025-02-09 06:55:35
}
