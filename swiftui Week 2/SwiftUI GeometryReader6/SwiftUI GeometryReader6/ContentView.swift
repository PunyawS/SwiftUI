//
//  ContentView.swift
//  SwiftUI GeometryReader6
//
//  Created by Chonlada on 10/1/2565 BE.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        GeometryReader { geometry in
            VStack (spacing: 0) {
                HStack (spacing: 0) {
                    Rectangle()
                        .foregroundColor(Color.green)
                        .frame(width: geometry.size.width/2, height: geometry.size.height/2)
                        .overlay(Text("1"))
                    Rectangle()
                        .foregroundColor(Color.orange)
                        .frame(width: geometry.size.width/2, height: geometry.size.height/2)
                        .overlay(Text("2"))
                }
                Rectangle()
                    .foregroundColor(Color.purple)
                    .frame(width: geometry.size.width, height: geometry.size.height * 0.33)
                    .overlay(Text("3"))
                Rectangle()
                    .foregroundColor(Color.red)
                    .frame(width: geometry.size.width, height: geometry.size.height * 0.17)
                    .overlay(Text("3"))
            }
           
        }
       // .background(Color.red)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
