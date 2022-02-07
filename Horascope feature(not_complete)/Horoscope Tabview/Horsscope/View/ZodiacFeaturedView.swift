//
//  ZodiacFeatureedView.swift
//  Horsscope
//
//  Created by Train2 on 7/1/2565 BE.
//

import SwiftUI

struct ZodiacFeaturedView: View {
    
    @ObservedObject var model = ZodiacModel()
    var body: some View {
        TabView{
            ForEach (model.zodiacs) { index in
                ZStack{
                    Rectangle()
                        .foregroundColor(Color.cyan)
                        .cornerRadius(20)
                        .shadow(radius: 10)
                    VStack(spacing:10){
                        Image("Zodiac/\(index.image)")
                            .resizable()
                            .scaledToFit()
                            .padding()
                        
                        Text(index.name)
                            .font(.system(size:25))
                            .foregroundColor(.white)
                            
                    }
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


