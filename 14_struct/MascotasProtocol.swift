//
//  MascotasProtocol.swift
//  Swift 2025
//
//  Created by Jose Garcia on 04/07/26.
//
/*
 En una veterinaria se registran diferentes tipos de mascotas. Todas las mascotas deben tener:

 Un nombre.
 Una edad.

 Además, cualquier mascota debe poder crearse de dos formas:

 Indicando el nombre y la edad.
 Indicando únicamente el nombre (en este caso la edad será 0).

 Crea un protocolo llamado Mascota que defina estas propiedades e inicializadores. Después, crea una estructura Perro que implemente el protocolo y crea objetos utilizando ambos inicializadores.
 */

protocol Mascota {
    var nombre: String { get }
    var edad: Int { get }

    init(nombre: String, edad: Int)
    init(nombre: String)
}

func MascotasProtocolApp() {
    struct Perro: Mascota {
        let nombre: String
        let edad: Int

        init(nombre: String, edad: Int) {
            self.nombre = nombre
            self.edad = edad
        }

        init(nombre: String) {
            self.nombre = nombre
            edad = 1
        }
    }

    struct Gato: Mascota {
        let nombre: String
        let edad: Int

        init(nombre: String, edad: Int) {
            self.nombre = nombre
            self.edad = edad
        }

        init(nombre: String) {
            self.nombre = nombre
            edad = 0
        }
    }

    // Devuelve aleatoriamente un Perro o un Gato

    func obtenerMascotaAleatoria() -> any Mascota {
        return Bool.random() ? Perro(nombre: "Pello") : Gato(nombre: "Mixi")
    }

    /*
     Una vez que entiendan qué es un protocolo, puedes explicar que en Swift moderno la forma recomendada es:

     func obtenerMascotaAleatoria() -> any Mascota

     y mencionar que any indica explícitamente que el valor devuelto es un protocolo usado como tipo, no una estructura o clase específica. Esta explicación suele ser suficiente en un primer curso sobre protocolos.
     */

    let perro1 = Perro(nombre: "Max", edad: 5)
    let perro2 = Perro(nombre: "Messikuaz")

    print("\(perro1.nombre) - \(perro1.edad) años")
    print("\(perro2.nombre) - \(perro2.edad) años")

    print()
    let mascota = obtenerMascotaAleatoria()
    print("Mascota seleccionada:")
    print("Nombre: \(mascota.nombre)")
    print("Edad: \(mascota.edad) años")
}
