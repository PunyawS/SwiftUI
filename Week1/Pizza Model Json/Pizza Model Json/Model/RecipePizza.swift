//
//  Model.swift
//  Pizza Model
//
//  Created by Train2 on 6/1/2565 BE.
//

import Foundation

struct recipePizza: Identifiable,Codable{
    enum CodingKeys: CodingKey{
        case name
        case toppings
    }
    
    var id = UUID()
    var name : String
    var toppings : String
}
