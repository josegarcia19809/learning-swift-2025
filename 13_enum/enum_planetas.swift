//
//  enum_planetas.swift
//  Swift 2025
//
//  Created by Jose Garcia on 19/06/26.
//

/*
 Create an enum with the planets of the solar system and their positions as integers.
 Loop through them and print out if they are rocky or gaseous.
 Create a variable with the planet Saturn and print out its position.
 Print the name of the planet at a random position
    (position in range 1…10)

 */

enum Planet: Int, CaseIterable {
    case mercury = 1, venus, earth, mars, jupiter, saturn, uranus, neptune
}

func planetApp() {
    switch Planet.RawValue.random(in: 1 ... 8) {
    case 1: print("Mercury")
    case 2: print("Venus")
    case 3: print("Earth")
    case 4: print("Mars")
    case 5: print("Jupiter")
    case 6: print("Saturn")
    case 7: print("Uranus")
    case 8: print("Neptune")
    default: print("Unknown")
    }
    imprimirLinea()
    for planet in Planet.allCases {
        if planet.rawValue <= 4 {
            print("\(planet) is rocky")
        } else {
            print("\(planet) is gaseous")
        }
    }

    imprimirLinea()
    let saturn = Planet.saturn
    print("Saturn is in position \(saturn.rawValue)")
    imprimirLinea()

    let position: Int = Planet.RawValue.random(in: 1 ... 10)
    if let randomPlanet = Planet(rawValue: position) {
        print("The random planet at position \(position) is \(randomPlanet)")
    } else {
        print("No planet found at position \(position)")
    }
}
