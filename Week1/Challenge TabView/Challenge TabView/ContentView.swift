//
//  ContentView.swift
//  Challenge TabView
//
//  Created by Train2 on 5/1/2565 BE.
//

import SwiftUI

//struct TabItem: Identifiable{
//    var id = UUID()
//    var title:Text
//    var image:Image
//    var tag:Int
//}

struct ContentView: View {
    
    // 4 button tab
    let tabData = [
        TabItem(title: Text("Tab 1"), image: Image(systemName: "pencil"), tag:1),
        TabItem(title: Text("Tab 2"), image: Image(systemName: "circle"), tag:2),
        TabItem(title: Text("Tab 3"), image: Image(systemName: "oval"), tag:3),
        TabItem(title: Text("Tab 4"), image: Image(systemName: "square"), tag:4)
    ]
    @State private var selectedTab = 3
    
    var body: some View {
        
        //click tab
        TabView(selection: $selectedTab)
            {
            ForEach(tabData) {tabItem in Text("Screen: \(tabItem.tag)")
                    .tabItem {
                        tabItem.title
                        tabItem.image
                    }.tag(tabItem.tag)
            }
        }
        
    }
}

struct TabItem: Identifiable{
    var id = UUID()
    var title:Text
    var image:Image
    var tag:Int
}
    
    
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
