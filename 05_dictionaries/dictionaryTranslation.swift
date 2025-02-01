//
//  dictionaryTranslation.swift
//  Swift 2025
//
//  Created by Jose Garcia on 01/02/25.
//

/*
 You have the following translation of numbers in french
 var translate = [1: "un", 2: "deux", 3: "trois"]
 Print out how you would translate 2.
 What about 3.
 Add the translation for 4 => "quatre"
 Print out the whole dictionary.
 */

func dictionaryTranslation() {
    var translate = [1: "un", 2: "deux", 3: "trois"]

    print("2 in french is \(translate[2]!)")
    print("3 in french is \(translate[3]!)")

    translate[4] = "quatre"

    print(translate)
}

/*
 2 in french is deux
 3 in french is trois
 [1: "un", 2: "deux", 4: "quatre", 3: "trois"]
 */
