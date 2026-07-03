//
//  ClampedValueExample.swift
//  Swift 2025
//
//  Created by Jose Garcia on 03/07/26.
//

func ClampedValueExampleApp() {
    @propertyWrapper
    struct ClampedValueExample {
        private var value: Int = 0

        private let minValue: Int
        private let maxValue: Int

        init(minValue: Int, maxValue: Int) {
            self.minValue = minValue
            self.maxValue = maxValue
        }

        var wrappedValue: Int {
            get { value }
            set { value = min(max(minValue, newValue), maxValue) }
        }
    }

    struct Estudiante {
        @ClampedValueExample(minValue: 0, maxValue: 100)
        var calificacion: Int
    }

    var alumno = Estudiante()
    alumno.calificacion = 110
    print(alumno.calificacion)

    alumno.calificacion = -100
    print(alumno.calificacion)

    alumno.calificacion = 70
    print(alumno.calificacion)
}

/*
 ¿Qué hace este Property Wrapper?

 @ClampedValue limita automáticamente el valor de una propiedad a un rango determinado.

 En este ejemplo:

 Si la calificación está entre 0 y 100, se almacena normalmente.
 Si es mayor que 100, se guarda 100.
 Si es menor que 0, se guarda 0.

 De esta manera, cualquier propiedad que utilice @ClampedValue(min:max:) siempre permanecerá dentro del rango especificado, reutilizando la misma lógica de validación.
 */
