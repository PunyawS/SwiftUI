//
//  DateTime.swift
//  3rd week
//
//  Created by Train3 on 21/1/2565 BE.
//

import Foundation

func getTime() -> String {
    let time = DateFormatter()
    time.timeStyle = .short
    let timeStr = time.string(from: Date())
    return timeStr
}

func getDate() -> String {
    let date = DateFormatter()
    date.dateStyle = .medium
    let dateStr = date.string(from: Date())
    return dateStr
}
