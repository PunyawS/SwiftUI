//
//  ContentView.swift
//  SwiftUI GeometryReader3
//
//  Created by Chonlada on 10/1/2565 BE.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        GeometryReader { geometry in
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.blue)
                .overlay( //ใช้ .overlay (ซ้อนทับ) เพื่อแสดงมุมมองเหนือมุมมองอื่น
                    VStack {
                        Text("X: \(Int(geometry.frame(in: .global).origin.x))")
                        Text("Y: \(Int(geometry.frame(in: .global).origin.y))")
                        Text("minX: \(Int (geometry.frame(in: .local).minX))")
                        Text("minY: \(Int (geometry.frame(in: .local).minY))")
                        Text("Width: \(geometry.size.width)")
                        Text("Width: \(geometry.size.height)")
                        
                        Text("Coordinates Local: \(geometry.frame(in: .local).debugDescription)")
                        //(x: 0, y: 0, width: 390, height: 400)
                        
                        Text("Coordinates Global: \(geometry.frame(in: .global).debugDescription)")
                        //(x: 0, y: 228.5, width: 390, height: 400)

                })
        }.frame(height: 400)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
