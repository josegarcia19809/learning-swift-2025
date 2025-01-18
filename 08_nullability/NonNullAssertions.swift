//
//  NonNullAssertions.swift
//  Swift 2025
//
//  Created by Jose Garcia on 18/01/25.
//

func nonNullAssertions(){
    let catName: String? = "Gatito"
    print(catName!)
}


/*
 Este código está escrito en Swift y muestra el uso de variables opcionales y force unwrapping (desempaquetado forzado). Vamos a analizarlo línea por línea:

 Código explicado:
 let catName: String? = "Gatito"

 Se declara una constante opcional catName de tipo String?.
 El signo de interrogación (?) indica que la constante puede contener un valor o nil (ausencia de valor).
 En este caso, se inicializa con el valor "Gatito", así que no es nil.
 print(catName!)

 Se utiliza el operador de desempaquetado forzado (!) para acceder al valor de catName.
 Esto implica que el programador asume que catName no es nil en este momento.
 Como catName tiene el valor "Gatito", el programa lo imprime en la consola sin problemas: Gatito.
 Nota importante sobre force unwrapping:
 Usar el operador ! para desempaquetar opcionales es arriesgado si no estás seguro de que el valor no sea nil.
 Si catName hubiera sido nil, el programa habría generado un error en tiempo de ejecución (runtime error), causando un fallo del programa.
 Ejemplo mejorado:
 Para evitar errores, es más seguro usar una verificación previa o desempaquetado seguro:

 if let unwrappedCatName = catName {
     print(unwrappedCatName) // Imprime: Gatito
 } else {
     print("No hay nombre para el gato")
 }
 Este enfoque asegura que no habrá errores si catName resulta ser nil.
 */
