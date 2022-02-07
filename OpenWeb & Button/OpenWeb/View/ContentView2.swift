//
//  ContentView2.swift
//  OpenWeb
//
//  Created by Train2 on 13/1/2565 BE.
//

import SwiftUI

struct ContentView2: View{
    @State private var showWeb:Bool = false
    private let strURL:String = "https://www.google.com"
    @State var webView:WebView2?
    
    var body: some View {
        ZStack {
            Color.yellow.ignoresSafeArea()
            
            VStack(spacing: 50) {
                webView
                
                HStack(spacing: 50){
                    
                    Button(action: { webView?.goBack() }) {
                        Image(systemName: "arrow.left.circle")
                    }.frame(width: 50.0, height: 50.0)
                    
                    Button(action: { webView?.refresh() }) {
                        Image(systemName: "arrow.clockwise.circle")
                    }.frame(width: 50.0, height: 50.0)
                    
                    Button(action: { webView?.goForward() }) {
                        Image(systemName: "arrow.right.circle")
                    }.frame(width: 50.0, height: 50.0)
                }
                
                Spacer()
            }
            .onAppear {
                webView = WebView2.init(url: URL.init(string: strURL)!)
            }
        }
    }
}


struct ContentView2_Previews: PreviewProvider {
    static var previews: some View {
        ContentView2()
    }
}
