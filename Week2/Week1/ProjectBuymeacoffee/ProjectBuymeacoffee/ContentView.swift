//
//  ContentView.swift
//  ProjectBuymeacoffee
//
//  Created by Train2 on 4/1/2565 BE.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 20)
                .foregroundColor(Color.yellow)
                .frame(width: 200, height: 50, alignment: .center)
            HStack{
                Image(systemName: "star")
                    .resizable()
                    .frame(width: 30, height: 30)
                    .padding(.leading)
                Text("Buy me a coffee").bold()
                    .padding(.trailing)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
