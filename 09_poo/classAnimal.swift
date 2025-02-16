//
//  classAnimal.swift
//  Swift 2025
//
//  Created by Jose Garcia on 16/02/25.
//

func classAnimal() {
    class Animal: CustomStringConvertible {

        private var _nombre: String
        private var _edad: Int

        init(nombre: String, edad: Int) {
            self._nombre = nombre
            self._edad = edad
        }

        var nombre: String {
            get {
                return _nombre
            }
            set {
                _nombre = newValue
            }
        }

        var edad: Int {
            get {
                return _edad
            }
            set {
                _edad = newValue
            }
        }

        func moverse() -> String {
            return "Animal moviéndose"
        }

        var description: String {
            return "Animal. Nombre: \(_nombre), edad: \(_edad)"
        }
    }

    let crocodile = Animal(nombre: "Crocodilo", edad: 100)
    print(crocodile)
    crocodile.nombre = "Lagarto"
    print(crocodile.moverse())
    print(crocodile)

    let anotherCrocodile = Animal(nombre: "Crocodilo", edad: 100)
    print(anotherCrocodile === crocodile)
    print(crocodile === crocodile)

}
