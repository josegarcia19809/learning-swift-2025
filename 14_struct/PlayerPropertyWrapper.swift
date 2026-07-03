//
//  PlayerPropertyWrapper.swift
//  Swift 2025
//
//  Created by Jose Garcia on 03/07/26.
//

/**
 Un jugador en un videojuego tiene dos características:

 Salud (health), cuyo valor puede ir de 0 a 100.
 Velocidad de movimiento (movement speed), cuyo valor puede ir de -10 a 10.

 Implementa la estructura Player y utiliza Property Wrappers para asegurar que los valores de estas propiedades siempre permanezcan dentro de los límites establecidos.

 Crea una instancia de la estructura Player, asigna algunos valores a sus propiedades y muestra los valores almacenados.
 */
func PlayerPropertyWrapperApp() {
    @propertyWrapper
    struct rangeValue {
        private var value: Int = 0

        private let minValue: Int
        private let maxValue: Int

        init(minValue: Int, maxValue: Int) {
            self.minValue = minValue
            self.maxValue = maxValue
        }

        var wrappedValue: Int {
            get { value }
            set { value = min(max(minValue, newValue), maxValue) }
        }
    }

    struct Player {
        @rangeValue(minValue: 0, maxValue: 100) var health: Int
        @rangeValue(minValue: -10, maxValue: 10) var movementSpeed: Int
    }

    var player = Player()
    player.health = 110
    print("Health: \(player.health)")

    player.movementSpeed = 11
    print("Movement Speed: \(player.movementSpeed)")

    player.movementSpeed = -11
    print("Movement Speed: \(player.movementSpeed)")

    player.health = 100
    print("Health: \(player.health)")
}
