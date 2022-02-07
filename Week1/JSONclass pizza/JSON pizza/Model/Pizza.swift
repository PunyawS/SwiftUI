//
//  PIzza.swift
//  JSON pizza
//
//  Created by Train3 on 6/1/2565 BE.
//

import Foundation

class Pizza: Identifiable, Decodable {
    var id:UUID?
    var name:String
    var toppings:[String]
}
