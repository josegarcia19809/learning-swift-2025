//
//  cargar_datos.swift
//  Swift 2025
//
//  Created by Jose Garcia on 11/06/26.
//

func loadData(url: String, onCompletion: () -> Void, onFailure: (String) -> Void) {
    let r = Int.random(in: 0 ... 100)
    switch r % 2 {
    case 0:
        onFailure("404 not found")
    default: do {
            print("\(url) data retrieved successfully")
            onCompletion()
        }
    }
}

func higherOrderFunctions() {
    for _ in 1 ... 10 {
        loadData(url: "google.com") {
            print("Completed")
        } onFailure: { error in
            print("Failed with error \(error)")
        }
    }
}
