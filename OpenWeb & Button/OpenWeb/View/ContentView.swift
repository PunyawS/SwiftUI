//
//  ContentView.swift
//  OpenWeb
//
//  Created by Train2 on 13/1/2565 BE.
//

import SwiftUI

struct ContentView: View {
    @State private var showWeb:Bool = false
    private let strURL: String = "https://www.google.com"
    
    
    var body: some View {
        ZStack{
            Color.yellow
                .ignoresSafeArea(.all)
            VStack(spacing: 50){
                WebView.init(url: URL.init(string: strURL)!)
                
                Button.init("Open web in app with sheet"){
                    showWeb.toggle()
                }.sheet(isPresented: $showWeb){
                    WebView.init(url: URL.init(string: strURL)!)
                }
                Link.init(destination: URL.init(string: strURL)!) {
                    Text.init("Open Web in safari").foregroundColor(.red)
                }
            }
//            .Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
