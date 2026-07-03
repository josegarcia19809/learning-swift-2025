//
//  observerMedicamento.swift
//  Swift 2025
//
//  Created by Jose Garcia on 02/07/26.
//

func observerMedicamentoApp() {
    struct Medicamento {
        var existencias: Int = 100 {
            willSet {
                print("Las existencias cambiarán de \(existencias) a \(newValue)")
            }

            didSet {
                print("Las existencias cambiaron de \(oldValue) a \(existencias)")
            }
        }
    }

    var medicamento = Medicamento()
    print(medicamento.existencias)
    medicamento.existencias = 10
    print(medicamento.existencias)
}

/*
 En Swift, los Property Observers (Observadores de propiedades) son bloques de código que se ejecutan automáticamente cuando el valor de una propiedad cambia. Son muy útiles para validar datos, mostrar mensajes, actualizar la interfaz o realizar alguna acción cuando una variable cambia.

 ¿Qué hacen los Property Observers?

 Permiten ejecutar código:

 Antes de que cambie el valor de una propiedad.
 Después de que cambie el valor de una propiedad.

 No modifican la forma en que se almacena el dato; simplemente "observan" los cambios.

 Tipos de Property Observers
 1. willSet

 Se ejecuta antes de que el nuevo valor sea asignado.

 Swift proporciona automáticamente una constante llamada newValue (o puedes darle otro nombre).

 2. didSet

 Se ejecuta después de que el nuevo valor ya fue asignado.

 Swift proporciona automáticamente una constante llamada oldValue, que contiene el valor anterior.
 */
