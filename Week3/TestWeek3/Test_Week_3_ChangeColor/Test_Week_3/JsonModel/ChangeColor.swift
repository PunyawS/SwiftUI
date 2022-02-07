//
//  SelectColor.swift
//  Test_Week_3
//
//  Created by Train2 on 21/1/2565 BE.
//

import Foundation

struct textColorRespone: Decodable{
    var color_text : [changeColortext]
    var color_bg : [changeColorbg]
}

struct changeColorbg: Decodable, Identifiable{
    var id : Int
    var code : String
}

struct changeColortext: Decodable, Identifiable{
    var id : Int
    var code : String
}

