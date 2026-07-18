//
//  nestedTypesExtensions.swift
//  Swift 2025
//
//  Created by Jose Garcia on 18/07/26.
//

class Company {
    var name: String

    init(name: String) {
        self.name = name
    }
}

extension Company {
    struct Location {
        var city: String
        var country: String
    }
}

func nestedTypesExtensionsApp() {
    let company = Company(name: "OpenAI")

    let location = Company.Location(
        city: "San Francisco",
        country: "United States"
    )

    print("Company: \(company.name)")
    print("City: \(location.city)")
    print("Country: \(location.country)")
}
