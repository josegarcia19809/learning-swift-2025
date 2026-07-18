//
//  subscriptExtensions.swift
//  Swift 2025
//
//  Created by Jose Garcia on 18/07/26.
//

extension Array {
    /**
     Este programa muestra cómo crear un subscript personalizado mediante una extensión del tipo Array. El subscript permite acceder a los elementos del arreglo comenzando desde el final, en lugar de hacerlo desde el inicio.

     En el ejemplo, se crea un arreglo de números y se utiliza el subscript reverseIndex para obtener el último y el penúltimo elemento, los cuales se imprimen en la consola. De esta forma, reverseIndex: 0 devuelve el último elemento del arreglo, reverseIndex: 1 devuelve el penúltimo, y así sucesivamente.
     */
    subscript(reverseIndex index: Int) -> Element {
        let reversedIndex = count - 1 - index
        return self[reversedIndex]
    }
}

func subscriptExtensionsApp() {
    let numbers = [1, 2, 3, 4, 5]

    let lastElement = numbers[reverseIndex: 0]
    let nextToLastElement = numbers[reverseIndex: 1]

    print("Last element: \(lastElement)")
    print("Next to last element: \(nextToLastElement)")
}
