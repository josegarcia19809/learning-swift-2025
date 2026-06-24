//
//  struct_varios.swift
//  Swift 2025
//
//  Created by Jose Garcia on 23/06/26.
//

func structLibroApp() {
    struct Libro {
        var titulo: String
        var autor: String
        var editorial: String
        var anioPublicacion: Int

        func mostrarInfo() {
            print("\(titulo) de \(autor)")
        }
    }
    let libro1 = Libro(titulo: "The Hobbit", autor: "J.R.R. Tolkien",
                       editorial: "Porrúa", anioPublicacion: 1980)

    print(libro1.titulo)
    libro1.mostrarInfo()
}

func structEstudianteApp() {
    struct Estudiante {
        var nombre: String
        var promedio: Double

        init(nombre: String) {
            self.nombre = nombre

            promedio = 0.0
        }
    }

    let estudiante1 = Estudiante(nombre: "José")

    print(estudiante1.nombre)
}

struct RectanguloS {
    var ancho: Double
    var alto: Double
}

extension RectanguloS {
    func area() -> Double {
        return ancho * alto
    }
}

func structRectanguloApp() {
    let rect = RectanguloS(ancho: 10, alto: 5)
    print("Área: \(rect.area())")
}

protocol Descriptible {
    func descripcion()
}

struct Producto: Descriptible {
    var nombre: String
    var precio: Double

    func descripcion() {
        print("\(nombre) - $\(precio)")
    }
}

func protocolDescriptibleApp() {
    let producto1 = Producto(nombre: "Auriculares", precio: 99.99)
    producto1.descripcion()
}

func personaApp() {
    struct Persona {
        var nombre: String
    }

    var persona1 = Persona(nombre: "Juan")
    var persona2 = persona1

    persona2.nombre = "Pedro"

    print(persona1.nombre)
    print(persona2.nombre)
}

func contadorApp() {
    struct Contador {
        var valor = 0

        mutating func incrementar() {
            valor += 1
        }
    }

    var contador = Contador()

    contador.incrementar()
    contador.incrementar()

    print(contador.valor)
}

/**
 🏗️ Convenience Initializers (Inicializadores de conveniencia)

 Los convenience initializers proporcionan formas alternativas de crear objetos, permitiendo ofrecer diferentes maneras de inicializar una instancia.

 Por ejemplo, una clase puede tener un inicializador completo y otros más simples que asignen valores predeterminados.
 */
func personaconvenienceClass() {
    class Persona {
        var nombre: String
        var edad: Int

        init(nombre: String, edad: Int) {
            self.nombre = nombre
            self.edad = edad
        }

        convenience init(nombre: String) {
            self.init(nombre: nombre, edad: 18)
        }
    }

    let p1 = Persona(nombre: "Ana", edad: 25)
    let p2 = Persona(nombre: "Luis")

    print("\(p1.nombre), \(p1.edad)")
    print("\(p2.nombre), \(p2.edad)")
}

/*
 📦 En las estructuras no existe convenience

 Las estructuras (struct) no utilizan la palabra clave convenience.

 Simplemente se crean inicializadores adicionales:
 */

func personaStructInits() {
    struct Persona {
        var nombre: String
        var edad: Int

        init(nombre: String, edad: Int) {
            self.nombre = nombre
            self.edad = edad
        }

        init(nombre: String) {
            self.nombre = nombre
            edad = 18
        }
    }

    let p1 = Persona(nombre: "Ana", edad: 25)
    let p2 = Persona(nombre: "Luis")

    print("\(p1.nombre), \(p1.edad)")
    print("\(p2.nombre), \(p2.edad)")
}

/*
 ✨ Etiquetas personalizadas

 Podemos usar una etiqueta externa diferente al nombre interno del parámetro.
 */

func rectanguloEtiquetas() {
    struct Rectangulo {
        var ancho: Double
        var alto: Double

        init(width ancho: Double, height alto: Double) {
            self.ancho = ancho
            self.alto = alto
        }
    }

    let rectangulo = Rectangulo(width: 10, height: 20)
    print(rectangulo.ancho)
    print(rectangulo.alto)
}
