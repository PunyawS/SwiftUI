//
//  listColor.swift
//  Test_Week_3
//
//  Created by Train2 on 21/1/2565 BE.
//

import Foundation

struct list_Color: Codable, Identifiable{
    enum CodingKeys: CodingKey {
        case id
        case code
    }
    var id : Int
    var code : String
}
