//
//  ZodiacTabView.swift
//  Horoscope
//
//  Created by Chonlada on 7/1/2565 BE.
//

import SwiftUI

struct ZodiacTabView: View {
    var body: some View {
        TabView {
            ZodiacFeaturedView()
                .tabItem {
                    Image(systemName: "star.fill")
                }
            ZodiacListView()
                .tabItem {
                    Image(systemName: "list.bullet")
                }
        }
        .environmentObject(ZodiacModel()) //Pass data instance zodiacModel
    }
}

struct ZodiacTabView_Previews: PreviewProvider {
    static var previews: some View {
        ZodiacTabView()
    }
}
