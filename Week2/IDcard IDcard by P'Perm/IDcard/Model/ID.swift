//
//  ID.swift
//  IDcard
//
//  Created by Train3 on 11/1/2565 BE.
//

import Foundation

struct ID: Identifiable, Codable {
    enum CodingKeys: CodingKey {
        case digit
        case description
    }
    
    var id = UUID()
    var digit: Int?
    var description: String?
}
