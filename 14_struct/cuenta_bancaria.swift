//
//  cuenta_bancaria.swift
//  Swift 2025
//
//  Created by Jose Garcia on 26/06/26.
//

/**
 Una estructura (struct) de cuenta bancaria tiene una variable llamada amount (saldo) y una
 calificación crediticia (credit rating).

 Cada vez que un usuario deposita dinero en la cuenta, su calificación crediticia aumenta.

 Cada vez que un usuario retira dinero de la cuenta, su calificación crediticia disminuye.

 Implementa este comportamiento en código.
 */
func cuentaBancariaApp() {
    struct BankAccount {
        var amount: Double
        private var creditRating: Int

        /// Computed Property
        var updatedCreditRating: Int {
            get {
                return creditRating
            }
            set {
                print("❌ Cannot directly set credit rating")
            }
        }

        init(amount: Double) {
            self.amount = amount
            creditRating = 50
        }

        mutating func deposit(_ depositAmount: Double) {
            amount += depositAmount

            // Aumenta 1 punto por cada $100 depositados
            creditRating = min(creditRating + Int(depositAmount / 100), 100)

            print("➕ Deposited \(depositAmount)")
            print("Balance: \(amount)")
            print("Credit Rating: \(updatedCreditRating)")
            print("------------------------")
        }

        mutating func withdrawal(_ withdrawalAmount: Double) {
            guard amount >= withdrawalAmount else {
                print("❌ Insufficient funds")
                print("------------------------")
                return
            }

            amount -= withdrawalAmount

            // Disminuye 1 punto por cada $100 retirados
            creditRating = max(creditRating - Int(withdrawalAmount / 100), 0)

            print("➖ Withdraw \(withdrawalAmount)")
            print("Balance: \(amount)")
            print("Credit Rating: \(updatedCreditRating)")
            print("------------------------")
        }
    }

    var userAccount = BankAccount(amount: 1000)

    userAccount.deposit(500)
    userAccount.withdrawal(200)
    userAccount.deposit(700)
    userAccount.withdrawal(1500)
    userAccount.withdrawal(1500)
}
