//
//  Model.swift
//  Pizza Model
//
//  Created by Train2 on 6/1/2565 BE.
//

import Foundation

struct RecipePizza: Identifiable{
    var id = UUID()
    var name = ""
    var topping1 = ""
    var topping2 = ""
    var topping3 = ""
    var price = ""
}
