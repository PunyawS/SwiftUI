//
//  Zodiac.swift
//  LoadAPI Json
//
//  Created by Train2 on 12/1/2565 BE.
//

import Foundation

struct ZodiacResponse: Decodable{
    var Status: String
    var Message: String
    var Datarow: [Zodiac]?
}

struct Zodiac: Decodable{

    var artide_id: Int
    var title: String
    var image: String
    var total_view: Int
    var artide_data: String? //เป็นค่าว่างก็ได้
    var pin:Bool
}
