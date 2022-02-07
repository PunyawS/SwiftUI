//
//  ATK.swift
//  Week2_Test_ATK
//
//  Created by Train2 on 14/1/2565 BE.
//

import Foundation

struct ATKResponse: Decodable{
    var Status : String
    var Message : String
    var Datarow : [ATK]?
}

struct ATK: Decodable, Identifiable{
    var id: UUID?
    var title : String
    var image : String
    var total_view : Int
    var zodiac_id : String
    var link : String?
    var pdf : Bool
    var can_click : Bool
}

