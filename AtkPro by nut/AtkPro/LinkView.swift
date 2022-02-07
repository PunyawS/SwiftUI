//
//  LinkView.swift
//  AtkPro
//
//  Created by Train1 on 13/1/2565 BE.
//

import SwiftUI

struct LinkView: View {
    @ObservedObject var atks = AtkModel()
    var body: some View {
        Text("Hello, World!")
    }
}

struct LinkView_Previews: PreviewProvider {
    static var previews: some View {
        LinkView()
    }
}
