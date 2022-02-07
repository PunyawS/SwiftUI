//
//  ZodiacFeaturedView.swift
//  Horoscope
//
//  Created by Train3 on 7/1/2565 BE.
//

import SwiftUI

struct ZodiacFeaturedView: View {
    
    @ObservedObject var model = ZodiacModel()
    
    var body: some View {
        NavigationView {
            TabView {
                ForEach(model.zodiacs) { index in
                    ZStack {
                        Rectangle()
                            .foregroundColor(Color.cyan)
                            .cornerRadius(20)
                            .shadow(radius: 10)
                        VStack {
                            Spacer()
                            Image("Zodiac/\(index.image)")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .padding()
                            Spacer()
                            Text("\(index.nameth)")
                            Spacer()
                        }
                    }
                    .frame(width: 250, height: 400, alignment: .center)
                }
            }
            .tabViewStyle(PageTabViewStyle())
            .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
        }

    }
}

struct ZodiacFeaturedView_Previews: PreviewProvider {
    static var previews: some View {
        ZodiacFeaturedView()
    }
}
