//
//  checar_tipos.swift
//  Swift 2025
//
//  Created by Jose Garcia on 14/07/26.
//

func checar_tiposApp() {
    class FiguraGeometrica {}

    class Elipse: FiguraGeometrica {
        func calcularAreaElipse() {
            print("Calculando el área de la elipse...")
        }
    }

    class Rectangulo: FiguraGeometrica {
        func calcularAreaRectangulo() {
            print("Calculando el área del rectángulo...")
        }
    }

    func obtenerFiguras() -> [FiguraGeometrica] {
        (1 ... 5).map { _ in
            Bool.random() ? Elipse() : Rectangulo()
        }
    }

    for figura in obtenerFiguras() {
        if figura is Elipse {
            print("Es una elipse")

            if let elipse = figura as? Elipse {
                elipse.calcularAreaElipse()
            }

        } else if figura is Rectangulo {
            print("Es un rectángulo")

            if let rectangulo = figura as? Rectangulo {
                rectangulo.calcularAreaRectangulo()
            }
        }
        print()
    }
}

/*
 ¿Qué hace cada parte?
 1. Recorre todas las figuras
 for figura in obtenerFiguras()

 Cada elemento del arreglo es del tipo FiguraGeometrica, aunque internamente puede ser una Elipse o un Rectángulo.

 2. Comprueba el tipo con is
 if figura is Elipse

 Pregunta:

 ¿Esta figura realmente es una Elipse?

 Si la respuesta es sí, entra al bloque.

 3. Convierte el tipo con as?
 if let elipse = figura as? Elipse {
     elipse.calcularAreaElipse()
 }

 Aquí ocurre el Type Casting.

 La variable figura es de tipo FiguraGeometrica, por lo que no puede llamar directamente a:

 figura.calcularAreaElipse()

 porque ese método no existe en la clase padre.

 Entonces se convierte de forma segura a Elipse usando as?.

 Si la conversión funciona, ahora sí puede llamar:

 elipse.calcularAreaElipse()
 Lo mismo ocurre con el rectángulo
 if let rectangulo = figura as? Rectangulo {
     rectangulo.calcularAreaRectangulo()
 }

 Si la figura realmente es un Rectangulo, Swift la convierte y permite acceder a sus métodos específicos.
 */
