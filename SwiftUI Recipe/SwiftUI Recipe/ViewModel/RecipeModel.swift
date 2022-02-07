//
//  RecipeModel.swift
//  SwiftUI Recipe
//
//  Created by Train2 on 6/1/2565 BE.
//

import Foundation

class RecipeModel {
    var recipes = [Recipe]() // Create Empty Array
    
    init() {
        //Create some dummy recipe data
        recipes.append(Recipe(name: "Spaghetti", cuisine: "Italian"))
        recipes.append(Recipe(name: "Sushi", cuisine: "Japanese"))
    }
}
