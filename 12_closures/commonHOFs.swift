//
//  commonHOFs.swift
//  Swift 2025
//
//  Created by Jose Garcia on 16/06/26.
//

func commonHufs() {
    let clientes = ["Caro", "Daniel", "Jose", "Ana"]
    for cliente in clientes {
        print("Hello \(cliente)")
    }
    print()

    clientes.filter {
        $0.count <= 4
    }.forEach {
        print("Hello \($0)")
    }

    print()

    clientes.map {
        $0.count
    }.forEach {
        print("Hello \($0)")
    }

    print()

    clientes.sorted {
        $0 < $1
    }.forEach {
        print($0)
    }

    print()

    for cliente in clientes.sorted(by: >) {
        print(cliente)
    }

    print()

    print(clientes.max {
        $0.count < $1.count
    })

    print()

    print(clientes.min {
        $0.count < $1.count
    })
}
