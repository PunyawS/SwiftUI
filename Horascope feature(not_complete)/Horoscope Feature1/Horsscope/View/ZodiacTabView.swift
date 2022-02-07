//
//  ZodiacTabView.swift
//  Horsscope
//
//  Created by Train2 on 7/1/2565 BE.
//

import SwiftUI

struct ZodiacTabView: View{
    var body: some View {
        TabView{
            Text("Featured View")
                .tabItem {
                    Image(systemName: "star.fill")
                }
                ZediacListVie()
                    .tabItem{
                        Image(systemName: "list.bullet")
            }
        }
    }
}

struct ZodiacTabView_Previews: PreviewProvider {
    static var previews: some View {
        ZodiacTabView()
    }
}
