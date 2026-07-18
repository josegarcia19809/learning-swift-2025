//
//  propiedadesExtensionInt.swift
//  Swift 2025
//
//  Created by Jose Garcia on 18/07/26.
//

extension Int {
    var cuadrado: Int {
        return self * self
    }

    var cubo: Int {
        return self * self * self
    }
}

func propiedadesExtensionIntApp() {
    let numero = 5

    print(numero.cuadrado)
    print(numero.cubo)
}
