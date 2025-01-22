//
//  fallthroughKeyword.swift
//  Swift 2025
//
//  Created by Jose Garcia on 22/01/25.
//

func fallthroughKeyword() {
    let number = Int.random(in: 1...3)
    print(number)

    switch number {
    case 1:
        print("Number 1")
        fallthrough
    case 2:
        print("Number 2 or number 1")
        fallthrough
    case 3:
        print("Number 3, number 2 or number 1")
        fallthrough
    default:
        break
    }
}


/*
 El uso de fallthrough permite que un caso en un switch continúe ejecutándose en los siguientes casos,
 sin verificar sus condiciones. Esto es útil si deseas agrupar o encadenar lógicamente varios
 casos consecutivos. Sin embargo, hay que usarlo con cuidado para evitar comportamientos inesperados.
 */
