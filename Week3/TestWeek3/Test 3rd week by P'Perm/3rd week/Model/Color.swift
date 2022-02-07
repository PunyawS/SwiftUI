//
//  Color.swift
//  3rd week
//
//  Created by Train3 on 21/1/2565 BE.
//

import Foundation
import UIKit

struct Color1: Identifiable, Codable {
    enum CodingKeys: CodingKey {
        case color_text
        case color_bg
    }
    
    var id = UUID()
    var color_text: [SubColor]
    var color_bg: [SubColor]
}

struct SubColor: Identifiable, Codable {
    enum CodingKeys: CodingKey {
        case id
        case code
    }
    
    var id: Int
    var code: String
}
