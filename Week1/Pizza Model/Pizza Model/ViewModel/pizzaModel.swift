//
//  ViewmodelPizza.swift
//  Pizza Model
//
//  Created by Train2 on 6/1/2565 BE.
//

import Foundation

class pizzaModel: ObservableObject{
    @Published var pizzas = [RecipePizza]()
    
    init(){
        pizzas.append(RecipePizza(name : "Meat Lover", topping1 : "Pepperoni", topping2 : "Mushroom", topping3 : "Bacon", price: "299"))
        pizzas.append(RecipePizza(name : "Deluxe", topping1 : "Ham", topping2 : "Mushroom", topping3 : "Pepper", price: "399"))
        pizzas.append(RecipePizza(name : "Hawaiian", topping1 : "Pineapple", topping2 : "Bacon", topping3 : "Ham", price: "499"))
    }
    func addPizza(){
        pizzas.append(RecipePizza(name : "Seafood", topping1 : "Pepperoni", topping2 : "Pineapple", topping3 : "Pepper", price: "699"))
        pizzas.append(RecipePizza(name : "Supreme", topping1 : "Bacon", topping2 : "Pineapple", topping3 : "Ham", price: "899"))
    }
}
