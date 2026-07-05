//
//  EmpleadosProtocol.swift
//  Swift 2025
//
//  Created by Jose Garcia on 04/07/26.
//

/*
 Sistema de empleados

 Una empresa registra información de sus empleados. Todos los empleados deben tener un nombre y un salario.

 El nombre solo podrá consultarse, ya que no cambia una vez registrado.
 El salario podrá consultarse y modificarse cuando el empleado reciba un aumento.

 Para ello:

 Crea un protocolo llamado Empleado.
 El protocolo debe requerir:
 Una propiedad nombre de tipo String que sea solo de lectura (get).
 Una propiedad salario de tipo Double que permita lectura y escritura (get set).
 Crea una estructura llamada Programador que implemente el protocolo.
 Crea una instancia de Programador, muestra su información, modifica su salario y vuelve a mostrar los datos.
 */

protocol Empleado {
    var nombre: String { get }
    var salario: Double { get set }
}

func EmpleadosProtocolApp() {
    struct Programador: Empleado {
        let nombre: String
        var salario: Double
    }

    var empleado = Programador(nombre: "Ana", salario: 1000)

    print("Nombre: \(empleado.nombre)")
    print("Salario: \(empleado.salario)")

    empleado.salario = 1200

    print("\nDespués del aumento")
    print("Nombre: \(empleado.nombre)")
    print("Salario: \(empleado.salario)")
}
