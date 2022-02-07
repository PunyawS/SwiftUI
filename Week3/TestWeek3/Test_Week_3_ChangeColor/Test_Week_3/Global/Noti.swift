//
//  Extension.swift
//  Tab_snow
//
//  Created by Train2 on 18/1/2565 BE.
//

import Foundation

extension Notification {
    static let editName = Notification.Name.init("editName") // กด Edit
    static let tabEditName = Notification.Name.init("tabEditName") //หลังกด Edit
    
    //use change background
    static let changeBg = Notification.Name.init("changeBg")
    //Text
    static let changText = Notification.Name.init("changeText")
}

