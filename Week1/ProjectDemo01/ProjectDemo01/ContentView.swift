//
//  ContentView.swift
//  ProjectDemo01
//
//  Created by Train2 on 4/1/2565 BE.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
//        let Selected = ["จองคิวใบขับขี่","ลงทะเบียน อบรมออนไลน์", "วิธีอบรมออนไลน์"]
//        List(Selected,id: \.self) {
//        Selecteds in Text(Selecteds)
        
        List{
            Text("จองคิวใบขับขี่")
            Text("ลงทะเบียนอบรมออนไลน์")
            Text("วิธีอบรมออนไลน์")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
