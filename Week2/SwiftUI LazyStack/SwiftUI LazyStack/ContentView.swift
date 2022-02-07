//
//  ContentView.swift
//  SwiftUI LazyStack
//
//  Created by Train2 on 10/1/2565 BE.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView{
            LazyVStack(spacing: 16){
                ForEach(0..<10000) { item in
                    RoundedRectangle(cornerRadius: 20)
                        .fill(Color.blue)
                        .frame(height: 100)
                        .shadow(radius: 100)
                }
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
