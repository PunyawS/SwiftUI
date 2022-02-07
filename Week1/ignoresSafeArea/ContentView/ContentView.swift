//
//  ContentView.swift
//  ContentView
//
//  Created by Train2 on 4/1/2565 BE.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Color("Custom Color")
                .ignoresSafeArea()
            Color(.systemRed)
                .frame(width: 400, height: 250)
            Color.blue
                .frame(width: 300,height: 200)
            Text("Hello, world!")
            .padding()
            .foregroundColor(Color.purple)
            .background(Color.yellow)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
