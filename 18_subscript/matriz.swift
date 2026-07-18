//
//  matriz.swift
//  Swift 2025
//
//  Created by Jose Garcia on 18/07/26.
//

func matrizApp() {
    struct Matriz {
        var datos = [
            [1, 2, 3],
            [4, 5, 6],
            [7, 8, 9],
        ]

        subscript(fila: Int, columna: Int) -> Int {
            get {
                return datos[fila][columna]
            }
            set {
                datos[fila][columna] = newValue
            }
        }
    }

    var matriz = Matriz()
    print(matriz[0, 0])
    matriz[0, 0] = 10
    print(matriz[0, 0])
}
