//
//  listIngredients.swift
//  Swift 2025
//
//  Created by Jose Garcia on 27/01/25.
//

/*
 A recipe calls for the following ingredients
 • Chicken
 • Egg
 • Mozzarella
 • Pepper
 You decide to replace the Mozzarella with blue cheese
 Print out the list of ingredients
 Add salt to the list of ingredients. Print out the new list.
 */
func listIngredients() {
    var ingredients = ["Chicken", "Egg", "Mozzarella", "Pepper"]
    print(ingredients)

    let index = ingredients.firstIndex(of: "Mozzarella") ?? -1
    ingredients[index] = "Blue cheese"
    print(ingredients)
    
    ingredients.append("Salt")
    print(ingredients)
}
