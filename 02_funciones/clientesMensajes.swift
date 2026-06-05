//
//  clientesMensajes.swift
//  Swift 2025
//
//  Created by Jose Garcia on 05/06/26.
//

/*
 Create a function that takes an integer variable “count” and a variable number of client names. Print out “count” hello messages for each client.

 i.e. if count = 3, print out 3 hello messages for each client.
 */

func clientesMensajes(_ count: Int, _ clientes: String...) {
    for cliente in clientes {
        for _ in 1 ... count {
            print("Hello \(cliente)")
        }
        print()
    }
}

func clientesMensajesApp() {
    clientesMensajes(2, "Ana", "José", "María", "José")
}
