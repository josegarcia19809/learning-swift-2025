//
//  temperaturas.swift
//  Swift 2025
//
//  Created by Jose Garcia on 18/07/26.
//

func temperaturasApp() {
    struct Temperaturas {
        private var datos = [20, 25, 30]

        subscript(indice: Int) -> Int {
            get {
                return datos[indice]
            }
            set {
                datos[indice] = newValue
            }
        }
    }

    var t = Temperaturas()
    print(t[0])

    t[0] = 22
    print(t[0])
}
