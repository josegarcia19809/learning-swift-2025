//
//  computed_properties_interes.swift
//  Swift 2025
//
//  Created by Jose Garcia on 27/06/26.
//

/*
 Desafío: Propiedades calculadas (Computed Properties)

 Un banco tiene distintas reglas para calcular la tasa de interés de sus cuentas.

 Si un usuario tiene menos de $1,000 en su cuenta, su tasa de interés es del 1.0%.
 Si un usuario tiene menos de $10,000, su tasa de interés es del 0.5%.
 Si un usuario tiene $10,000 o más, su tasa de interés es del 0.2%.

 Implementa este comportamiento en un programa.

 Crea una instancia de la cuenta bancaria, modifica el saldo (amount) y muestra en pantalla la
 tasa de interés correspondiente después de cada cambio.

 💡 Pista: Este ejercicio está pensado para utilizar una computed property, de modo que la tasa de
 interés se calcule automáticamente cada vez que cambie el saldo de la cuenta.
 */

func tasaInteresApp() {
    struct BankAccountInterest {
        var amount: Double

        var interestRate: Double {
            if amount < 1000.0 {
                return 1
            } else if amount < 10000 {
                return 0.5
            } else {
                return 0.2
            }
        }
    }

    var cuenta = BankAccountInterest(amount: 1000)
    print("Saldo: \(cuenta.amount)")
    print("Tasa de interés: \(cuenta.interestRate)%")

    cuenta.amount = 70000
    print("Saldo: \(cuenta.amount)")
    print("Tasa de interés: \(cuenta.interestRate)%")

    cuenta.amount = 200
    print("Saldo: \(cuenta.amount)")
    print("Tasa de interés: \(cuenta.interestRate)%")
}
