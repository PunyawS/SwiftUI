//
//  horoCardModel.swift
//  horocard
//
//  Created by Train2 on 11/1/2565 BE.
//

import Foundation

struct horoCardModel: Identifiable, Codable{
    enum CodingKeys: CodingKey{
        case digit
        case description

    }
    var id = UUID()
    var digit: Int
    var description: String
}
