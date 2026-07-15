//
//  herenciaArte.swift
//  Swift 2025
//
//  Created by Jose Garcia on 15/07/26.
//

func herenciaArte() {
    /*
     Una clase Art (Arte) tiene el nombre del artista y un método para firmar la obra de arte.

     Las clases Painting (Pintura) y Sculpture (Escultura) son ambos tipos de arte, pero cada una tiene su propia forma específica de firmar la obra de arte.

     Implementa esto en código.
     */
    class Arte {
        var nombreArtista: String
        init(nombreArtista: String) {
            self.nombreArtista = nombreArtista
        }

        func firmarObra() {
            print("Firma de la obra por \(nombreArtista)")
        }
    }

    class Pintura: Arte {
        override func firmarObra() {
            print("Pintura")
            super.firmarObra()
        }
    }

    class Escultura: Arte {
        override func firmarObra() {
            print("Escultura")
            super.firmarObra()
        }
    }

    let escultura = Escultura(nombreArtista: "Miguel Angello")
    let pintura = Pintura(nombreArtista: "Da Vinci")

    escultura.firmarObra()
    print()
    pintura.firmarObra()
}

func HerenciaTemperatura() {
    /*
     Un sensor de temperatura mantiene una temperatura y registra los cambios que se realizan a ese valor.

     Un termostato tiene un sensor de temperatura y proporciona mensajes personalizados según la temperatura establecida. Muestra diferentes mensajes para temperaturas superiores a 30, inferiores a 0 y entre esos valores.

     Implementa estas clases en código.
     */
    class SensorTemperatura {
        var temperatura: Double {
            didSet {
                print()
                print("La temperatura cambió a \(temperatura) ºC")
            }
        }

        init(temperatura: Double) {
            self.temperatura = temperatura
        }
    }

    class Termostato: SensorTemperatura {
        override var temperatura: Double {
            didSet {
                if temperatura >= 30.0 {
                    print("Hace calor. Temperatura: \(temperatura) ºC")
                } else if temperatura <= 0.0 {
                    print("Hace mucho frío. Temperatura: \(temperatura) ºC")
                } else {
                    print("Temperatura cambió a \(temperatura) ºC")
                }
            }
        }
    }

    let termostato = Termostato(temperatura: 25.0)
    termostato.temperatura = 32.5
    termostato.temperatura = -5.0
    termostato.temperatura = 22.0
}

func herenciaApp() {
    herenciaArte()

    imprimirLinea()

    HerenciaTemperatura()
}
