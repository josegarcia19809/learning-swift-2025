//
//  defaultValues.swift
//  Swift 2025
//
//  Created by Jose Garcia on 18/07/26.
//

func defaultValuesApp() {
    struct Multiplicador {
        subscript(numero: Int, por valor: Int = 2) -> Int {
            return numero * valor
        }
    }

    let m = Multiplicador()

    print(m[5])
    print(m[5, por: 4])
}
