//
//  safeCall.swift
//  Swift 2025
//
//  Created by Jose Garcia on 17/01/25.
//

func safeCalls(){
    var catName: String? = "Mixi"
    print(catName?.uppercased())
    print(catName?.uppercased().count)
    
    catName = nil
    print(catName?.uppercased())
}

/*
 Este código demuestra el uso de optional chaining (?.) en Swift para trabajar
 con variables opcionales (String?).

 Definición y uso inicial:

 Se declara una variable catName de tipo String? (puede ser nula) con el valor
 inicial "Mixi".
 La llamada catName?.uppercased() verifica si catName tiene un valor antes de
 intentar ejecutar el método uppercased().
 Como catName tiene un valor, se convierte a mayúsculas y se imprime: MIXI.
 
 
 Asignación de nil:
 Se asigna nil a la variable catName.
 Al intentar llamar catName?.uppercased(), como catName es nil, el método no se
 ejecuta y el resultado es nil. No se imprime nada.
 En resumen, optional chaining en Swift permite ejecutar métodos o acceder a
 propiedades de un opcional de forma segura, evitando errores si el valor es nil.
 */
