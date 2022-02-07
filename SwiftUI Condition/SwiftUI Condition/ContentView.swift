//
//  ContentView.swift
//  SwiftUI Condition
//
//  Created by Train2 on 4/1/2565 BE.
//

import SwiftUI

struct ContentView: View {
    @State var showpopup = false
    var body: some View {
        ZStack{
            VStack(spacing: 50){
                Text("Hello, world!")
                    .padding()
                Button("Showpopup"){
                    showpopup.toggle()
                }
            }
            if showpopup {
                Rectangle()
                    .frame(width: 100, height: 50, alignment: .center)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
