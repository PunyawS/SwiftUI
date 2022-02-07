//
//  ContentView.swift
//  SwiftUI GeometryReader5
//
//  Created by Chonlada on 10/1/2565 BE.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        GeometryReader { proxy in
            VStack {
                Text("Width: \(proxy.size.width)")
                    .background(Color.orange)
                    .padding()
                Text("Height: \(proxy.size.height)")
                    .background(Color.orange)
                    .padding()
                Text("Coordinates Local: \(proxy.frame(in: .local).debugDescription)")
                    .background(Color.orange)
                    .padding()
                Text("Coordinates Global: \(proxy.frame(in: .global).debugDescription)")
                    .background(Color.orange)
                    .padding()
            }
            .background(Color.red)
            .frame(width: 300, height: 300)
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
