//
//  deinitializer.swift
//  Swift 2025
//
//  Created by Jose Garcia on 15/07/26.
//

func deinitializerVehiculo() {
    class Vehiculo {
        deinit {
            print("vehiculo eliminado")
        }
    }

    class Auto: Vehiculo {
        func conducir() {
            print("Conduciendo...")
        }

        deinit {
            print("auto eliminado")
        }
    }

    var auto: Auto? = Auto()
    auto?.conducir()
    auto = nil
}

func deinitializerPersona() {
    class Persona {
        let nombre: String

        init(nombre: String) {
            self.nombre = nombre
        }

        deinit {
            print("\(nombre) eliminado")
        }
    }

    var persona: Persona? = Persona(nombre: "Carolina")
    print(persona?.nombre ?? "")
    persona = nil
}

func deinitializersArchivo() {
    /*
     Resumen
     init se ejecuta cuando se crea el objeto y en este ejemplo "abre" el archivo.
     write() simula escribir datos en el archivo.
     f es opcional para poder asignarle nil más adelante.
     Al hacer f = nil, desaparece la última referencia al objeto.
     ARC detecta que ya no hay referencias y destruye la instancia.
     Antes de destruirla, Swift ejecuta automáticamente deinit, donde se "cierra" el archivo.

     Este ejemplo no abre ni escribe realmente un archivo en el disco; utiliza mensajes con print para simular el ciclo de vida de un recurso externo (abrir → usar → cerrar), que es uno de los usos más comunes de deinit.
     */
    class Archivo {
        let nombreArchivo: String
        init(nombreArchivo: String) {
            self.nombreArchivo = nombreArchivo
            print("Abriendo archivo \(nombreArchivo)")
        }

        func escribir(datos: String) {
            print("Escribiendo '\(datos)' en el archivo \(nombreArchivo)")
        }

        deinit {
            print("Cerrando archivo \(nombreArchivo)")
        }
    }

    var archivo: Archivo? = Archivo(nombreArchivo: "archivo.txt")
    archivo?.escribir(datos: "Hola mundo")
    archivo = nil
}

func chatRoomApp() {
    /*
     Una sala de chat tiene un nombre y puede almacenar un arreglo de mensajes.

     Crea la clase ChatRoom y agrega la funcionalidad requerida. Asegúrate de que la memoria utilizada se libere cuando la sala de chat ya no sea necesaria.
     */
    class ChatRoom {
        var nombre: String
        var mensajes: [String]

        init(nombre: String) {
            self.nombre = nombre
            mensajes = []
        }

        func enviarMensaje(mensaje: String) {
            mensajes.append(mensaje)
        }

        func verMensajes() -> [String] {
            return mensajes
        }

        deinit {
            print("Borrando mensajes de la sala de chat: \(nombre)")
        }
    }

    var chat: ChatRoom? = ChatRoom(nombre: "Sala de chat")
    chat?.enviarMensaje(mensaje: "Hola, soy un nuevo miembro")
    chat?.enviarMensaje(mensaje: "¡Hola a todos!")
    print(chat?.verMensajes() ?? [])
    chat = nil
}

func deinitializerCuentaBancaria() {
    /*
     Una clase Cuenta Bancaria tiene un número de cuenta y mantiene el saldo de dicha cuenta. También tiene un método que permite al propietario retirar fondos.

     Cuando una cuenta se cierra, todo el dinero debe retirarse.

     Diseña una clase con estas características y llama a sus métodos.
     */
    class CuentaBancaria {
        var numeroCuenta: String
        var saldo: Double

        init(numeroCuenta: String, saldo: Double) {
            self.numeroCuenta = numeroCuenta
            self.saldo = saldo
        }

        func retirar(cantidad: Double) {
            saldo -= cantidad
        }

        deinit {
            print("Cuenta bancaria \(numeroCuenta) eliminada")
            retirar(cantidad: saldo)
            print("Saldo restante: \(saldo)")
        }
    }

    var cuenta: CuentaBancaria? = CuentaBancaria(numeroCuenta: "1234", saldo: 1000)
    cuenta?.retirar(cantidad: 500)
    print(cuenta?.saldo ?? 0.0)

    cuenta = nil
    print(cuenta?.saldo ?? 0.0)
}

func deinitializerApp() {
    deinitializerVehiculo()
    imprimirLinea()

    deinitializerPersona()
    imprimirLinea()

    deinitializersArchivo()
    imprimirLinea()

    chatRoomApp()
    imprimirLinea()

    deinitializerCuentaBancaria()
    imprimirLinea()
}
