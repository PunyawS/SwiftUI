//
//  ContentView.swift
//  UseCocoapods
//
//  Created by Train2 on 13/1/2565 BE.
//

import SwiftUI
import SDWebImageSwiftUI

struct ContentView: View {
    var body: some View {
//        Text("Hello, world!")
//            .padding()
        AnimatedImage.init(url: URL.init(string: "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg"))
            .resizable()
            .frame(width: 100, height: 100)
            .clipShape(Circle())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
