//
//  type_casting.swift
//  Swift 2025
//
//  Created by Jose Garcia on 14/07/26.
//

func type_castingApp() {
    class Animal {
        var nombre: String

        init(nombre: String) {
            self.nombre = nombre
        }
    }

    class Perro: Animal {
        func ladrar() {
            print("\(nombre): ¡Guau!")
        }
    }

    class Gato: Animal {
        func maullar() {
            print("\(nombre): ¡Miau!")
        }
    }

    let animales: [Animal] = [
        Perro(nombre: "Firulais"),
        Gato(nombre: "Michi"),
        Perro(nombre: "Rocky"),
    ]

    for animal in animales {
        if let perro = animal as? Perro {
            perro.ladrar()
        }

        if let gato = animal as? Gato {
            gato.maullar()
        }
    }
}

/*
 Recomendación práctica
 ✅ Usa is para verificar el tipo de un objeto.
 ✅ Usa as? en la mayoría de los casos, ya que evita errores y permite manejar conversiones fallidas de forma segura.
 ⚠️ Usa as! únicamente cuando tengas la certeza absoluta de que la conversión siempre será válida.
 ✅ Usa as para conversiones garantizadas, como convertir una clase a una superclase o a un protocolo que implementa.
 */
