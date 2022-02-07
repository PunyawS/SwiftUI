//
//  ContentView.swift
//  ProjectDemo03
//
//  Created by Train2 on 4/1/2565 BE.
//

import SwiftUI

struct ContentView: View {
    @State var showpopup = false
    var body: some View {
        ZStack{
            VStack(spacing:50){
                Text("Cafe")
                    .padding()
                Button("Click here !"){
                    showpopup.toggle()
                }
            }
            if showpopup{
                VStack(spacing:15){
                    Text("Espresso")
                    Text("Capuchino")
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
