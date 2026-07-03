//
//  PersonNameWrapper.swift
//  Swift 2025
//
//  Created by Jose Garcia on 03/07/26.
//

/*
 Una estructura Persona almacena el nombre y el apellido. Es necesario asegurarse de que ambos nombres comiencen con letra mayúscula. Implementa esta funcionalidad en código.
 */

func PersonNameWrapperApp() {
    @propertyWrapper
    struct Capitalize {
        private var text = ""

        var wrappedValue: String {
            get { text }
            set { text = newValue.capitalized }
        }

        init(wrappedValue: String) {
            text = wrappedValue.capitalized
        }
    }

    struct Person {
        @Capitalize var name: String
        @Capitalize var lastName: String
    }

    var person = Person(name: "jose", lastName: "garcia")
    print(person.name)
    print(person.lastName)
    person.name = "jose manuel"
    print(person.name)
    person.lastName = "garcia herrera"
    print(person.lastName)
}
