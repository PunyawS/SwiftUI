//
//  ContentView.swift
//  SwiftUI GeometryReader2
//
//  Created by Chonlada on 10/1/2565 BE.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        GeometryReader { (proxy: GeometryProxy) in
            VStack (spacing: 0) {
                HStack (spacing: 0) {
                    Color.green
                        .frame(
                            width: proxy.size.width / 2,
                            height: proxy.size.height / 2
                        )
                    Color.blue
                        .frame(
                            width: proxy.size.width / 2,
                            height: proxy.size.height / 2
                        )
                }
                HStack (spacing: 0) {
                    Color.red
                        .frame(
                            width: proxy.size.width / 2,
                            height: proxy.size.height / 2
                        )
                    Color.yellow
                        .frame(
                            width: proxy.size.width / 2,
                            height: proxy.size.height / 2
                        )
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
