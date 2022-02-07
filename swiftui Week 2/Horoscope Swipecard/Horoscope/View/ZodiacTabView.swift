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
            // Call func to use Star Page
            ZodiacFeaturedView()
                .tabItem {
                    Image(systemName: "star.fill")
                }
            //Call func to use Data in Json "fortune teller"
                .environmentObject(FortuneTellerModel()) //Pass data instance FortuneTellerModel
            
            // Call func to use List Zodiac Page
            ZodiacListView()
                .tabItem {
                    Image(systemName: "list.bullet")
                }
            //Call func to use Data in Json "zodiac horoscope"
                .environmentObject(ZodiacModel()) //Pass data instance zodiacModel
        }
    }
}

struct ZodiacTabView_Previews: PreviewProvider {
    static var previews: some View {
        ZodiacTabView()
    }
}
