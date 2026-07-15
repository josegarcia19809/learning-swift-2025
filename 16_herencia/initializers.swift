//
//  initializers.swift
//  Swift 2025
//
//  Created by Jose Garcia on 15/07/26.
//

func initializersPersona() {
    /*
     Aquí ocurre un detalle interesante.

     Como Estudiante no tiene propiedades nuevas, hereda automáticamente el inicializador.

     let e = Estudiante(nombre: "Ana")

     Funciona perfectamente.
     */
    class Persona {
        var nombre: String

        init(nombre: String) {
            self.nombre = nombre
        }
    }

    class Estudiante: Persona {}

    let e = Estudiante(nombre: "Ana")
    print(e.nombre)

    /*
     Pero si agregamos una propiedad nueva:

     class Estudiante: Persona {

         var matricula: Int

         init(nombre: String, matricula: Int) {
             self.matricula = matricula
             super.init(nombre: nombre)
         }

     }

     Ahora ya no hereda automáticamente el inicializador del padre.

     Debe crear uno propio.
     */
}

func HerenciaAnimal() {
    /*
     Cuando una clase hereda de otra, el inicializador debe llamar al del padre.

     Siempre mediante:

     super.init(...)
     */
    class Animal {
        var nombre: String

        init(nombre: String) {
            self.nombre = nombre
        }
    }

    class Perro: Animal {
        var raza: String

        init(nombre: String, raza: String) {
            self.raza = raza

            super.init(nombre: nombre)
        }
    }

    let perro = Perro(nombre: "Messikuaz", raza: "Criolla")
    print("Nombre: \(perro.nombre), raza: \(perro.raza)")
}

func PersonaEmpleado() {
    /*
     Una clase Persona mantiene un nombre y una edad. Tiene un inicializador designado para esas propiedades, así como una función para imprimirlas de una manera clara y fácil de leer.

     Un Empleado es una Persona que, además, tiene una propiedad adicional llamada ID de empleado.

     Implementa esta funcionalidad en código e imprime la información de una Persona y de un Empleado.
     */
    class Persona {
        var nombre: String
        var edad: Int

        init(nombre: String, edad: Int) {
            self.nombre = nombre
            self.edad = edad
        }

        func mostrarInfo() {
            print("Nombre: \(nombre), edad: \(edad)")
        }
    }

    class Empleado: Persona {
        var id: Int
        init(id: Int, nombre: String, edad: Int) {
            self.id = id
            super.init(nombre: nombre, edad: edad)
        }

        override func mostrarInfo() {
            print("id: \(id), nombre: \(nombre), edad: \(edad)")
        }
    }

    let empleado = Empleado(id: 12, nombre: "Rosario", edad: 23)
    empleado.mostrarInfo()

    let persona = Persona(nombre: "Maria", edad: 21)
    persona.mostrarInfo()
}

func figuraHerencia() {
    /*
     Una clase Figura tiene un nombre, un inicializador y una función para calcular el área total.

     Un Círculo es una Figura que tiene un radio. Sobrescribe el inicializador designado y la función de la clase Figura.

     Un Rectángulo es una Figura que tiene un ancho y un alto. Sobrescribe el inicializador designado y la función de la clase Figura.

     Implementa esto en código, crea un círculo y un rectángulo, e imprime el área de cada uno.
     */
    class Figura {
        var nombre: String
        init(nombre: String) {
            self.nombre = nombre
        }

        func calcularArea() -> Double {
            return 0.0
        }

        func mostrarInfo() {
            print("Nombre: \(nombre), área: \(calcularArea()) unidades cuadradas")
        }
    }

    class Circulo: Figura {
        var radio: Double

        init(nombre: String, radio: Double) {
            self.radio = radio
            super.init(nombre: nombre)
        }

        override func calcularArea() -> Double {
            return 3.1416 * radio * radio
        }
    }

    class Rectangulo: Figura {
        var ancho: Double
        var alto: Double

        init(nombre: String, ancho: Double, alto: Double) {
            self.ancho = ancho
            self.alto = alto
            super.init(nombre: nombre)
        }

        override func calcularArea() -> Double {
            return ancho * alto
        }
    }

    let circulo = Circulo(nombre: "Circulo", radio: 2)
    circulo.mostrarInfo()

    let rectangulo = Rectangulo(nombre: "Rectangulo", ancho: 3, alto: 4)
    rectangulo.mostrarInfo()
}

func initializersApp() {
    initializersPersona()
    imprimirLinea()

    HerenciaAnimal()
    imprimirLinea()

    PersonaEmpleado()
    imprimirLinea()

    figuraHerencia()
}
