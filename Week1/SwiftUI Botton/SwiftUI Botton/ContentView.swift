//
//  ContentView.swift
//  SwiftUI Botton
//
//  Created by Train2 on 4/1/2565 BE.
//

import SwiftUI

struct ContentView: View {
    @State var counter: Int = 0
    
    var body: some View {
        VStack(spacing:30){
            Text("\(counter)")
            
            Button("Increase counter", action: {
                counter += 1
            })
            .frame(width: 150, height: 100, alignment: .center)
            .font(.title2)
            .foregroundColor(Color.white)
            .background(Color.blue)
            
            Button(action: {counter = counter-1}) {
                Image(systemName: "arrow.down")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
