//
//  BankAccount_private.swift
//  Swift 2025
//
//  Created by Jose Garcia on 24/06/26.
//
/*
 🔒 Acceso privado (private) en Swift

 La palabra clave private se utiliza para restringir la visibilidad de propiedades y métodos.
 Esto significa que ciertos datos o funciones solo pueden utilizarse dentro de la estructura,
 clase o enumeración donde fueron definidos.

 Una cuenta bancaria almacena el saldo de los fondos de un usuario y tiene funcionalidades para depositar y retirar dinero.

 Es importante que el saldo no pueda modificarse directamente para prevenir fraudes.

 Implementa esto en código y ejecuta las funciones con diferentes cantidades de dinero.
 */

func bankAccountApp() {
    struct BankAccount {
        private var balance: Double

        init(balance: Double) {
            self.balance = balance
        }

        mutating func deposit(amount: Double) {
            guard amount > 0 else {
                print("Error: Deposit amount must be greater than zero")
                return
            }
            balance += amount
            print("Deposited \(amount). New balance: \(balance)")
        }

        mutating func withdraw(amount: Double) {
            guard amount > 0 else {
                print("Error: Withdrawal amount must be greater than zero")
                return
            }
            guard amount <= balance else {
                print("Error: Insufficient funds")
                return
            }
            balance -= amount
            print("Withdrew \(amount). New balance: \(balance)")
        }

        func showBalance() {
            print("Balance: \(balance)")
        }

        func getBalance() -> Double {
            return balance
        }
    }

    var cuenta = BankAccount(balance: 3000.0)
    cuenta.showBalance()
    print("The balance is \(cuenta.getBalance())")
    cuenta.deposit(amount: 1000.0)
    cuenta.showBalance()
    cuenta.withdraw(amount: 2000.0)
    cuenta.showBalance()
}
