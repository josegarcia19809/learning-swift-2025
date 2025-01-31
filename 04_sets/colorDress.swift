//
//  colorDress.swift
//  Swift 2025
//
//  Created by Jose Garcia on 30/01/25.
//

/*
 Your company has very strict dress code. Only certain color clothes can be worn in the office.
 ["white", "black", "grey"]
 You have certain colors in your wardrobe.
 ["blue" , "red", "black", "green"]
 What color clothes can you wear? What colors can you not wear?
 Your company has added another color, "red" to their list. What options do you have now?
 */
func colorDress() {
    var colorDressOffice: Set<String> = ["white", "black", "grey"]
    let myColorDress: Set<String> = ["blue", "red", "black", "green"]

    print("What color clothes can you wear? \(colorDressOffice.intersection(myColorDress))")
    print("What color clothes can you not wear? \(myColorDress.subtracting(colorDressOffice))")

    print()
    print("insert red color")
    colorDressOffice.insert("red")
    print("What color clothes can you wear? \(colorDressOffice.intersection(myColorDress))")
    print("What color clothes can you not wear? \(myColorDress.subtracting(colorDressOffice))")
}
