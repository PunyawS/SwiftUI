//
//  ContentView.swift
//  SwiftUI TabView
//
//  Created by Train2 on 4/1/2565 BE.
//

import SwiftUI

struct ContentView: View {
    @State private var selection: Int = 1
    var body: some View {
        TabView(selection:$selection){
            
            Text("First")
                .tabItem{
                    Image(systemName: "star")
                    Text("Home")
                }
                .tag(1)
            Text("Second")
                .tabItem{
                    Image(systemName: "person")
                    Text("Me")
                }
                .tag(2)
        }
        .accentColor(.red) //สี tab
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
