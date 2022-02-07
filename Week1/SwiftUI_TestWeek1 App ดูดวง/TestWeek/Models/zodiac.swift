//
//  zodiac.swift
//  TestWeek
//
//  Created by Train2 on 7/1/2565 BE.
//

import Foundation
//import SwiftUI

struct Zodiac: Identifiable,Codable {
    //ประเภทข้อมูล ชื่อ CodingKeys จะใช้ Keyword "case" เพื่อกำหนด ค่าของข้อมูลในแต่ละกรณี
    enum CodingKeys: CodingKey {
        case name
        case nameth
        case image
        case birthtext
        case predict
    }
    
    var id = UUID()
    var name : String
    var nameth : String
    var image : String
    var birthtext : String
    var predict : String
}
