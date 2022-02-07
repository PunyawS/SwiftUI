//
//  ContentView.swift
//  SwiftUI LazyVGrid
//
//  Created by Chonlada on 10/1/2565 BE.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView {
            LazyVGrid(columns: [GridItem(.adaptive(minimum: 100))]) {
                ForEach(0 ..< 10000) { item in
                    RoundedRectangle(cornerRadius: 20)
                        .fill(Color.white)
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
