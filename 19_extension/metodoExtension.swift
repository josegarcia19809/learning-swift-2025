//
//  metodoExtension.swift
//  Swift 2025
//
//  Created by Jose Garcia on 18/07/26.
//

extension Int {
    func esPar() -> Bool {
        return self % 2 == 0
    }

    func multiplicarPorTres() -> Int {
        return self * 3
    }
}

func metodoExtensionApp() {
    let numero = 8

    print(numero.esPar())
    print(numero.multiplicarPorTres())
}
