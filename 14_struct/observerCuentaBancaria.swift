//
//  observerCuentaBancaria.swift
//  Swift 2025
//
//  Created by Jose Garcia on 02/07/26.
//

func observerCuentaBancaria() {
    struct CuentaBancaria {
        var fondos: Double = 0.0 {
            willSet {
                print("Verificación de seguridad completada antes de actualizar los fondos.")
            }

            didSet {
                print("Fondos actualizados de $\(oldValue) a $\(fondos).")
                print("Operación registrada correctamente.")
                print()
            }
        }
    }

    var cuenta = CuentaBancaria()

    cuenta.fondos = 1500.00
    cuenta.fondos = 1250.50
}

/*
 ¿Qué sucede?
 willSet se ejecuta antes de que cambie el valor de fondos, por lo que se utiliza para simular la verificación de seguridad.
 didSet se ejecuta después de que el valor cambió, por lo que registra la operación mostrando el valor anterior (oldValue) y el nuevo valor (fondos).

 Este ejemplo ilustra el uso típico de los Property Observers para ejecutar acciones automáticamente antes y después de modificar una propiedad.
 */
