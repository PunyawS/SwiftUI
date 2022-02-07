//
//  ZodiacFeaturedView.swift
//  Horoscope
//
//  Created by Chonlada on 7/1/2565 BE.
//

import SwiftUI

struct ZodiacFeaturedView: View {
    
    @EnvironmentObject var modelFortune: FortuneTellerModel
    @State var selectionIndex = 0
    
    var body: some View {
        //star Page
        VStack(alignment: .leading, spacing: 0) {
            Text("หมอดู แม่นๆ...")
                .bold()
                .padding(.leading)
                .padding(.top, 40)
                .font(Font.custom("Avenir Heavy", size: 40))
            //swipeCard
            GeometryReader { geometry in
                TabView {
                    ForEach(modelFortune.fortuneTellers) { p in
//                        ZStack {
//                            ZStack {
                                VStack {
                                    Image(p.image)
                                        .resizable()
                                        .scaledToFit()
                                        .cornerRadius(20)
                                    Text(p.name)
                                        .fontWeight(.bold).font(.title)
                                    Text("ติดต่อ : \(p.contact)")
                                        .font(Font.custom("Avenir Heavy", size: 20))
                                    Text(p.description)
                                        .font(Font.custom("Avenir Heavy", size: 19))
                                }
//                            }
//                        }
                        .frame(width: geometry.size.width - 40, height: geometry.size.height - 100, alignment: .top)
                    }
                }
                .tabViewStyle(PageTabViewStyle())
                .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
            }
            //Text(modelFortune.fortuneTellers[selectionIndex].name).fontWeight(.bold).font(.title)
        }
    }
}

struct ZodiacFeaturedView_Previews: PreviewProvider {
    static var previews: some View {
        ZodiacFeaturedView()
    }
}
