//
//  ContentView.swift
//  SwiftUI Stacks
//
//  Created by Train2 on 4/1/2565 BE.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack(alignment: .bottom, spacing: 40){
            Text("Hello, world!").fontWeight(.bold).foregroundColor(Color.red)
            Image(systemName: "person")
            VStack(alignment: .leading, spacing: 100){
                Text("Hello, JJ")
                Image(systemName: "person")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
