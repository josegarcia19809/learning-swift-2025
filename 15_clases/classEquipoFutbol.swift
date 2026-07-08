//
//  classEquipoFutbol.swift
//  Swift 2025
//
//  Created by Jose Garcia on 08/07/26.
//

func classEquipoFutbolApp() {
    class Equipo {
        var totalJugadores: Int

        init(totalJugadores: Int) {
            self.totalJugadores = totalJugadores
        }

        func jugar() {
            print("Empezar juego")
            var golAnotado = false
            while !golAnotado {
                for i in 1 ... totalJugadores {
                    print()
                    print("Jugador #\(i)")
                    let jugada = Int.random(in: 1 ... 100)
                    switch jugada {
                    case 1 ... 40: print("Está corriendo")
                    case 41 ... 65: print("Está regatenado")
                    case 66 ... 90: print("Está pasando el balón")
                    case 91 ... 100:
                        print("Disparó a la portería")
                        if Bool.random() {
                            print("Gol anotado")
                            golAnotado = true

                        } else {
                            print("El portero detuvo el disparo")
                        }
                    default:
                        print("No anotó gol")
                    }
                    if golAnotado { break }
                }
            }
            print("¡El partido terminó porque se anotó un gol!")
        }
    }
    let equipo = Equipo(totalJugadores: 11)
    equipo.jugar()
}

func classEquipoFutbolApp2() {
    enum Accion {
        case correr
        case regatear
        case pasar
        case disparar

        var descripcion: String {
            switch self {
            case .correr:
                return "Está corriendo"
            case .regatear:
                return "Está regateando"
            case .pasar:
                return "Está pasando el balón"
            case .disparar:
                return "Disparó a la portería"
            }
        }

        static func aleatoria() -> Accion {
            let numero = Int.random(in: 1 ... 100)

            switch numero {
            case 1 ... 40:
                return .correr
            case 41 ... 65:
                return .regatear
            case 66 ... 90:
                return .pasar
            default:
                return .disparar
            }
        }
    }

    class Equipo {
        var totalJugadores: Int

        init(totalJugadores: Int) {
            self.totalJugadores = totalJugadores
        }

        func jugar() {
            print("⚽ ¡Comienza el partido!\n")

            var golAnotado = false

            while !golAnotado {
                for i in 1 ... totalJugadores {
                    print("Jugador #\(i)")

                    let accion = Accion.aleatoria()
                    print(accion.descripcion)

                    switch accion {
                    case .correr:
                        break

                    case .regatear:
                        break

                    case .pasar:
                        break

                    case .disparar:
                        if Bool.random() {
                            print("🥅 ¡GOOOL!")
                            golAnotado = true
                        } else {
                            print("🧤 El portero detuvo el disparo.")
                        }
                    }

                    print()

                    if golAnotado {
                        break
                    }
                }
            }

            print("🏁 El partido terminó porque se anotó un gol.")
        }
    }

    let equipo = Equipo(totalJugadores: 11)
    equipo.jugar()
}
