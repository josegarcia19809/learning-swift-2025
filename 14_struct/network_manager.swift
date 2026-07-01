//
//  network_manager.swift
//  Swift 2025
//
//  Created by Jose Garcia on 30/06/26.
//

func NetworkManagerApp() {
    struct NetworkManager {
        let url: String
        private(set) var data: String?

        init(url: String) {
            self.url = url
            fetchData()
        }

        private mutating func fetchData() {
            data = "Data from \(url)"
        }
    }

    let myNetworkManager = NetworkManager(url: "https://example.com")
    print(myNetworkManager.data ?? "No data")
}
