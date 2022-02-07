//
//  IDInputModel.swift
//  IDcard
//
//  Created by Train3 on 11/1/2565 BE.
//

import Foundation
import SwiftUI

//limit 13 characters
class IDInputModel: ObservableObject {
    @Published var IDinput: String = "" {
        didSet {
            if IDinput.count > 13 {
                IDinput = String(IDinput.prefix(13))
            }
        }
    }
}
