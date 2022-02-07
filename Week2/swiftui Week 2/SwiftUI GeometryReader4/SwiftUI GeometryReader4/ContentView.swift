//
//  ContentView.swift
//  SwiftUI GeometryReader4
//
//  Created by Chonlada on 10/1/2565 BE.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        GeometryReader { geometry in
            VStack(spacing: 0) {
                Rectangle()
                    .fill(Color.red)
                    .frame(width: geometry.size.width, height:geometry.size.height/4)
                HStack (spacing: 0){
                    Rectangle()
                        .fill(Color.blue)
                        .frame(width: geometry.size.width/2, height: geometry.size.height/4)
                    Rectangle()
                        .fill(Color.green)
                        .frame(width: geometry.size.width/2, height: geometry.size.height/4)
                }
                HStack (spacing: 0){
                    Rectangle()
                        .fill(Color.green)
                        .frame(width: geometry.size.width/2, height: geometry.size.height/4)
                    Rectangle()
                        .fill(Color.blue)
                        .frame(width: geometry.size.width/2, height: geometry.size.height/4)
                }
                Rectangle()
                    .fill(Color.red)
                    .frame(width: geometry.size.width, height: geometry.size.height/4)
            }
            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
