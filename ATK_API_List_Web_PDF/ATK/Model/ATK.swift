//
//  ATK.swift
//  ATK
//
//  Created by Train2 on 13/1/2565 BE.
//

import Foundation

struct ATK: Decodable, Identifiable{
    enum CodingKeys: CodingKey{
        case title
        case image
        case link
    }
    var id = UUID()
    var title : String
    var image : String
    var link : String
}
