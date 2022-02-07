//
//  ContentView.swift
//  SwiftUI Image
//
//  Created by Train2 on 4/1/2565 BE.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            Image("Image")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 500, height: 200, alignment: .center)
                .clipShape(Rectangle())
            
                Image(systemName: "person")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
