//
//  Name.swift
//  Siamese App
//
//  Created by Train2 on 14/1/2565 BE.
//

import Foundation

struct Name: Decodable, Identifiable{
    enum CodingKeys: CodingKey{
        case name
        case image
        case Detail
    }
    var id = UUID()
    var name : String
    var image : String
    var Detail : String
}
