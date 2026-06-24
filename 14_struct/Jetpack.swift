//
//  Jetpack.swift
//  Swift 2025
//
//  Created by Jose Garcia on 23/06/26.
//

/*
 🚀 Una mochila propulsora (Jetpack) puede hacer volar a un usuario. Para ello cuenta con dos operaciones:

 burn(número de segundos): eleva al usuario.
 stop(número de segundos): hace que el usuario descienda.
 Suposiciones
 Cada segundo que se utiliza burn, el usuario asciende 1 metro.
 Cada segundo que se utiliza stop, el usuario desciende 3 metros.
 Instrucciones
 Crea una estructura llamada Jetpack.
 La estructura debe almacenar una variable llamada userHeight (altura del usuario).
 Implementa dos métodos:
 burn(seconds) para aumentar la altura.
 stop(seconds) para disminuir la altura.
 Crea una instancia de la estructura.
 Llama a sus métodos varias veces.
 Imprime algunos resultados para mostrar cómo cambia la altura del usuario.
 Restricción importante ⚠️

 Debes asegurarte de que la altura del usuario nunca sea menor que 0 metros.

 Por ejemplo:

 Altura inicial: 0 m

 burn(10)
 Altura: 10 m

 stop(2)
 Altura: 4 m

 stop(5)
 Altura: 0 m

 Aunque stop(5) intentaría bajar la altura a un valor negativo, la altura debe permanecer en 0 metros como mínimo. 🚀📏
 */

// Estructura Jetpack a nivel superior
struct Jetpack {
    var userHeight: Int

    // Aumenta la altura 1 m por segundo
    mutating func burn(segundos: Int) {
        guard segundos > 0 else { return }
        userHeight += segundos
    }

    // Disminuye la altura 3 m por segundo, sin bajar de 0
    mutating func stop(segundos: Int) {
        guard segundos > 0 else { return }
        let descenso = segundos * 3
        userHeight = max(0, userHeight - descenso)
    }
}

// Función de demostración
func JetpackApp() {
    // Usa 'var' para permitir llamar a métodos mutating sin el error de inmutabilidad
    var pack = Jetpack(userHeight: 0)
    print("Altura inicial: \(pack.userHeight) m")

    pack.burn(segundos: 10)
    print("Tras burn(10): \(pack.userHeight) m") // 10

    pack.stop(segundos: 2)
    print("Tras stop(2): \(pack.userHeight) m") // 4

    pack.stop(segundos: 5)
    print("Tras stop(5): \(pack.userHeight) m") // 0, no negativo
}
