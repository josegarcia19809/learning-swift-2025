//
//  registroCalorias.swift
//  Swift 2025
//
//  Created by Jose Garcia on 02/03/25.
//

func registroCalorias() {
    class Actividad {
        var tipo: String
        var nombre: String
        var calorias: Int

        init(tipo: String, nombre: String, calorias: Int) {
            self.tipo = tipo
            self.nombre = nombre
            self.calorias = calorias
        }
    }

    class RegistroCalorias {
        var actividades: [Actividad] = [
            Actividad(tipo: "ejercicio", nombre: "Correr", calorias: 500),
            Actividad(tipo: "ejercicio", nombre: "Nadar", calorias: 400),
            Actividad(tipo: "ejercicio", nombre: "Bicicleta", calorias: 300),
            Actividad(tipo: "comida", nombre: "Pizza", calorias: 800),
            Actividad(tipo: "comida", nombre: "Ensalada", calorias: 200),
            Actividad(tipo: "comida", nombre: "Sushi", calorias: 600),
            Actividad(tipo: "ejercicio", nombre: "Yoga", calorias: 200),
            Actividad(tipo: "ejercicio", nombre: "Pesas", calorias: 350),
            Actividad(tipo: "comida", nombre: "Hamburguesa", calorias: 700),
            Actividad(tipo: "comida", nombre: "Fruta", calorias: 100)
        ]

        func registrar(actividad: Actividad) {
            actividades.append(actividad)
        }

        func editar(actividadEditada: Actividad, indice: Int) {
            actividades[indice] = actividadEditada
        }

        func buscar(nombre: String) -> Int? {
            return actividades.firstIndex(where: { $0.nombre == nombre })
        }

        func borrar(indice: Int) {
            if indice >= 0 && indice < actividades.count {
                actividades.remove(at: indice)
            }
        }

        func totalCaloriasComidas() -> Int {
            let totalCaloriasComidas: Int = actividades
            .filter {
                $0.tipo == "comida"
            }
            .reduce(0) { result, actividad in
                result + actividad.calorias
            }
            return totalCaloriasComidas
        }

        func totalCaloriasEjercicios() -> Int {
            let totalCaloriasEjercicios: Int = actividades
            .filter {
                $0.tipo == "ejercicio"
            }
            .reduce(0) { result, actividad in
                result + actividad.calorias
            }
            return totalCaloriasEjercicios
        }

        func diferenciaCalorias() -> Int {
            return totalCaloriasComidas() - totalCaloriasEjercicios()
        }

        func mostrarActividadesComidas() {
            for actividad in actividades.filter({ $0.tipo == "comida" }) {
                print("\(actividad.nombre): \(actividad.calorias) calorías")
            }
        }

        func mostrarActividadesEjercicios() {
            for actividad in actividades.filter({ $0.tipo == "ejercicio" }) {
                print("\(actividad.nombre): \(actividad.calorias) calorías")
            }
        }

    }

    func imprimirActividades(registroCalorias: RegistroCalorias) {
        print("Comidas")
        registroCalorias.mostrarActividadesComidas()
        print("Total de calorías consumidas: \(registroCalorias.totalCaloriasComidas())")
        imprimirLinea()
        print("Ejercicios")
        registroCalorias.mostrarActividadesEjercicios()
        print("Total de calorías consumidas: \(registroCalorias.totalCaloriasEjercicios())")
        imprimirLinea()
        print("Diferencia: \(registroCalorias.diferenciaCalorias())")
        print()
        print()
    }

    let miRegistro = RegistroCalorias()

    miRegistro.registrar(actividad: Actividad(tipo: "ejercicio", nombre: "Jugar futbol", calorias: 100))

    imprimirActividades(registroCalorias: miRegistro)

    var indiceBuscado = miRegistro.buscar(nombre: "Fruta")
    if let indice = indiceBuscado {
        miRegistro.borrar(indice: indice)
    }
    imprimirActividades(registroCalorias: miRegistro)

    indiceBuscado = miRegistro.buscar(nombre: "Yoga")

    if let indice = indiceBuscado {
        miRegistro.editar(actividadEditada: Actividad(tipo: "comida", nombre: "Yogurt", calorias: 50),
                indice: indice)
    }

    imprimirActividades(registroCalorias: miRegistro)

}
