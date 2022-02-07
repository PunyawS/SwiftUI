//
//  FortuneTeller.swift
//  Horoscope
//
//  Created by Chonlada on 10/1/2565 BE.
//

import Foundation

struct FortuneTeller: Identifiable, Codable {
    enum CodingKeys: CodingKey {
        case name
        case image
        case contact
        case description
    }

    var id = UUID()
    var name: String
    var image:String
    var contact: String
    var description: String
    
}
