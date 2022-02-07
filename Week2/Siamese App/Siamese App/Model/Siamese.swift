//
//  Siamese.swift
//  Siamese App
//
//  Created by Train2 on 14/1/2565 BE.
//

import Foundation

struct Siamese: Decodable, Identifiable{
    enum CodingKeys: CodingKey{
        case title
        case discription
    }
    var id = UUID()
    var title : String
    var discription : String
}

