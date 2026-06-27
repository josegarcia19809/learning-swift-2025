//
//  computed_property_temperatura.swift
//  Swift 2025
//
//  Created by Jose Garcia on 26/06/26.
//

func temperaturaApp() {
    struct Temperatura {
        var celsius: Double
        var fahrenheit: Double {
            get {
                return (celsius * 9 / 5) + 32
            }

            set {
                celsius = (newValue - 32) * 5 / 9
            }
        }
    }

    var temp = Temperatura(celsius: 25)
    print("Celsius: \(temp.celsius)")
    print("Fahrenheit: \(temp.fahrenheit)")

    temp.fahrenheit = 86
    print("Después de cambiar Fahrenheit")
    print("Celsius: \(temp.celsius)")
    print("Fahrenheit: \(temp.fahrenheit)")
}
