//
//  zodiac.swift
//  Horoscope
//
//  Created by Chonlada on 7/1/2565 BE.
//

import Foundation

struct Zodiac: Identifiable, Codable {
    enum CodingKeys: CodingKey {
        case name
        case nameth
        case image
        case birthtext
        case predict
    }

    var id = UUID()
    var name: String
    var nameth: String
    var image:String
    var birthtext: String
    var predict: String
    
}
