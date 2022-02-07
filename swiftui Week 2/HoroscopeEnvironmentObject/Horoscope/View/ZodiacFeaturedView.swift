//
//  ZodiacFeaturedView.swift
//  Horoscope
//
//  Created by Chonlada on 7/1/2565 BE.
//

import SwiftUI

struct ZodiacFeaturedView: View {
    @EnvironmentObject var model: ZodiacModel //เมื่อมีการสร้าง instance zodiacModel จะไป loadata ใน class ZodiacModel
    var body: some View {
        TabView {
            ForEach (1..<9) { index in
                ZStack {
                    Rectangle()
                        .foregroundColor(Color.cyan)
                        .cornerRadius(20)
                        .shadow(radius: 10)
                    Image(systemName: "\(index).circle")
                        .resizable()
                        .scaledToFit()
                }
                .frame(width: 250, height: 400, alignment: .center)
            }
        }
        .tabViewStyle(PageTabViewStyle())
        .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
    }
}

struct ZodiacFeaturedView_Previews: PreviewProvider {
    static var previews: some View {
        ZodiacFeaturedView()
    }
}
