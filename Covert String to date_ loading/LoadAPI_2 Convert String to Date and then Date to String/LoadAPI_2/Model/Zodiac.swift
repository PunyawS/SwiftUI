//
//  Zodiac.swift
//  LoadAPI_2
//
//  Created by Train2 on 12/1/2565 BE.
//

import Foundation

struct ZodiacResponse: Decodable{
    var Status : String
    var Message : String
    var Datarow : [Zodiac]?
}

struct Zodiac: Decodable, Identifiable{
    var id: UUID?
    var zodiac_id : String?
    var title : String
    var image : String?
    var total_view : Int
    var artide_date : String
    var remark : String?
    var pin : Bool
}
