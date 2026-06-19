//
//  enum_transport.swift
//  Swift 2025
//
//  Created by Jose Garcia on 19/06/26.
//

/*
 You have 4 modes of transportation available:

 a car that has a speed parameter

 a bike

 a bus that has a number of passengers parameter

 walking

 Create a function that returns a string describing a particular mode of transportation.

 Another function allows us to plan a trip by printing all descriptions of all modes.
 Implement this in code and test it.
 */

enum Transport {
    case car(speed: Int)
    case bike
    case bus(passengerCount: Int)
    case walking
}

func getDescription(mode: Transport) -> String {
    switch mode {
    case let .car(speed):
        return "A car with a speed of \(speed) kph"
    case .bike:
        return "A bike"
    case let .bus(passengerCount):
        return "A bus with \(passengerCount) passengers"
    case .walking:
        return "Walking"
    }
}

func planTravel(modes: [Transport]) {
    for mode in modes {
        print(getDescription(mode: mode))
    }
}

func travelApp() {
    let travelModes: [Transport] = [.car(speed: 100), .bike, .bus(passengerCount: 30), .walking]
    planTravel(modes: travelModes)
}
