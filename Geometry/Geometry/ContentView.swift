//
//  ContentView.swift
//  Geometry
//
//  Created by Train2 on 10/1/2565 BE.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
    GeometryReader { geometry in
            Text("Hello, World!")
            .onAppear {
                print("geometry ",geometry.size)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
