//
//  ContentView.swift
//  SwiftUI OpenURLAction
//
//  Created by Train2 on 5/1/2565 BE.
//

import SwiftUI

struct ContentView: View {
    
    @Environment(\.openURL) var openURL
    
    var body: some View {
        Button(action: contactSupport) {
            Text("Support")
            Image(systemName: "envelope.open")
        }
        Link("Click", destination: URL(string:"https://www.apple.com")!).buttonStyle(.borderedProminent)
    }
    func contactSupport(){
        guard let url = URL(string:"https://www.apple.com") else{
            return
        }
        openURL(url)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
