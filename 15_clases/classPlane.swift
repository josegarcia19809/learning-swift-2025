//
//  classPlane.swift
//  Swift 2025
//
//  Created by Jose Garcia on 08/07/26.
//

func classPlaneApp() {
    class Plane {
        var totalFlightHours: Int

        init(totalFlightHours: Int) {
            self.totalFlightHours = totalFlightHours
        }

        func startFlight() {
            print("Starting flight...")
            for hour in 1 ... totalFlightHours {
                print("\nHour \(hour) of flight")
                performFlightPhase(hour)
            }
            print("\nThe plane has landed safely")
        }

        func performFlightPhase(_ hour: Int) {
            switch hour {
            case 1: print("Takeoff in progress...")
            case totalFlightHours: print("Landing in progress...")
            default: print("Cruising at a stable altitude")
            }
        }
    }

    let flightHours = Int.random(in: 1 ... 10)
    let plane = Plane(totalFlightHours: flightHours)
    plane.startFlight()
}
