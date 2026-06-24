//
//  structAnimal.swift
//  Swift 2025
//
//  Created by Jose Garcia on 23/06/26.
//
/**
 Crea una estructura llamada Animal.
 Debe tener una propiedad llamada topSpeed (velocidad máxima) y un método llamado run() que imprima un mensaje indicando cuál es la velocidad máxima del animal.

 Crea una instancia a partir de esa estructura y ejecuta el método.

 Actualiza el valor de la variable y ejecuta nuevamente el método. 🐾🏃‍♂️💨
 */
func structAnimalApp() {
    struct Animal {
        var topSpeed: Int
        func run() {
            print("I can run at \(topSpeed) km/h")
        }
    }

    var animal = Animal(topSpeed: 100)
    animal.run()

    animal.topSpeed = 150
    animal.run()
}
