//
//  Dailyhoroscope_Model.swift
//  Challenge Dailyhoroscope_SwipeCard
//
//  Created by Train2 on 10/1/2565 BE.
//

import Foundation

struct Daliyhoro: Identifiable, Codable {
    enum CodingKeys: CodingKey{
            case day
            case image
            case work
            case finance
            case love
        }
        var id = UUID()
        var day: String
        var image: String
        var work: String
        var finance: String
        var love: String
}
