//
//  Content_self.swift
//  Swift 2025
//
//  Created by Jose Garcia on 24/06/26.
//

/*
 Una caja tiene una variable llamada contents de tipo String y una función updateContents que también recibe una variable llamada contents.

 Crea un programa que actualice la variable dentro de la función updateContents.
 */

func BoxApp() {
    struct Box {
        var contents: String
        mutating func updateContents(_ contents: String) {
            self.contents = contents
        }
    }

    var box = Box(contents: "is empty")
    box.updateContents("now has a value")
    print(box.contents)
}
