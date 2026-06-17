//
//  clientes_ordenados_por_ultima_letra.swift
//  Swift 2025
//
//  Created by Jose Garcia on 16/06/26.
//

/*
 You have a list of clients from your online store.
 Display a list that is sorted by the last letter of their name.
 */

func clientes_ordenados_por_ultima_letra() {
    let clientes = ["Ana", "Raquel", "Memo", "Anahi", "Jose"]

    let clientesOrdenados = clientes.sorted { n1, n2 -> Bool in
        return n1.last! < n2.last!
    }

    print(clientesOrdenados)
}
