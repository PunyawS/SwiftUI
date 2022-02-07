//
//  Atk.swift
//  AtkPro
//
//  Created by Train1 on 13/1/2565 BE.
//

import Foundation

struct Atk: Decodable, Identifiable{
    
    enum CodingKeys: CodingKey{
        case title
        case image
        case link
    }
    
    
    var id = UUID()
    var title:String
    var image:String
    var link:String
}












