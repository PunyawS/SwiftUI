//
//  ZodiacTabview.swift
//  Horoscope
//
//  Created by Train3 on 7/1/2565 BE.
//

import Foundation
import SwiftUI

struct ZodiacTabView: View {
    
    var body: some View {
        TabView {
            
            //tab1
            ZodiacFeaturedView()
                .tabItem{
                    Image(systemName: "star.fill")
                }
            
            //tab2
            ZodiacListView()
                .tabItem{
                    Image(systemName: "list.bullet")
                }
            DailyHoroscope()
                .tabItem{
                    Image(systemName: "moon.fill")
                }
        }
    }
}

struct ZodiacTabView_Previews: PreviewProvider {
    static var previews: some View {
        ZodiacTabView()
    }
}
