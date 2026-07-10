//
//  classEmpleado.swift
//  Swift 2025
//
//  Created by Jose Garcia on 09/07/26.
//

func classEmpleadoApp(){
    class Empleado {
        var nombre: String
        var salario: Double
        
        init(nombre: String, salario: Double) {
            self.nombre = nombre
            self.salario = salario
        }
        
        func bonificacion(porcentaje: Double) -> Double {
            return self.salario + (self.salario * porcentaje / 100.0)
        }
        
        func mostrarInformacion() {
                print("Empleado: \(nombre)")
                print("Salario: $\(salario)")
            }
    }
    
    class Vendedor: Empleado {
        var ventas: Double
        
        init(nombre: String, salario: Double, ventas: Double) {
            self.ventas = ventas
            super.init(nombre: nombre, salario: salario)
        }
        
        override func bonificacion(porcentaje: Double) -> Double {
            let base = super.bonificacion(porcentaje: porcentaje)
            return base + (self.ventas * 0.05)
        }
    }
    
    class Gerente: Empleado {
        var departamento: String

        init(nombre: String, salario: Double, departamento: String) {
            self.departamento = departamento
            super.init(nombre: nombre, salario: salario)
        }

        func trabajar() {
            print("\(nombre) está supervisando el departamento de \(departamento).")
        }

        func realizarJunta() {
            print("\(nombre) está realizando una junta con el personal.")
        }
    }
    let vendedor = Vendedor(nombre: "Jose", salario: 1000, ventas: 10000)
    vendedor.mostrarInformacion()
    print("Bonificación: \(vendedor.bonificacion(porcentaje: 10))")
    print()
    
    
    let gerente = Gerente(nombre: "Luis", salario: 1000, departamento: "Venta")
    gerente.mostrarInformacion( )
    gerente.trabajar()
    gerente.realizarJunta()
    print("Bonificación: \(gerente.bonificacion(porcentaje: 20))")
}
