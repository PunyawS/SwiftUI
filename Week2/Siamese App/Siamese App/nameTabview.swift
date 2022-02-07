//
//  nameTabview.swift
//  Siamese App
//
//  Created by Train2 on 14/1/2565 BE.
//

import Foundation
import SwiftUI

struct nameTabview: View {
    init() {
      UITabBar.appearance().backgroundColor = UIColor.white
    }
    
    var body: some View {
        TabView {
            //tab1
            NameFeaturedView().tabItem{
                Label("Menu", systemImage: "moon")
            }
            //tab2
            nameList().tabItem{
                Label("Menu", systemImage: "list.dash")
            }
        }
        //Color TabView when you select
        .accentColor(.yellow)
    }
}


struct nameTabview_Previews: PreviewProvider {
    static var previews: some View {
        nameTabview()
    }
}
