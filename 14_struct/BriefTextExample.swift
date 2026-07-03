//
//  BriefTextExample.swift
//  Swift 2025
//
//  Created by Jose Garcia on 03/07/26.
//

func BriefTextExampleApp() {
    @propertyWrapper
    struct BriefText {
        private var text = ""

        var wrappedValue: String {
            get {
                text
            }
            set {
                if newValue.count <= 10 {
                    text = newValue
                } else {
                    text = "\(newValue.prefix(10))..."
                }
            }
        }
    }

    struct Mensaje {
        @BriefText var titulo: String
    }

    var mensaje = Mensaje()

    mensaje.titulo = "Hola"
    print(mensaje.titulo)

    mensaje.titulo = "Programación en Swift"
    print(mensaje.titulo)
}
