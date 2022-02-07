//
//  ZodiacDetailView.swift
//  Horsscope
//
//  Created by Train2 on 7/1/2565 BE.
//

import SwiftUI

struct ZodiacDetailView: View{
    var zodiac : Zodiac
    var body : some View {
        
        ScrollView {
            VStack(alignment: .leading) {
                Image("Zodiac/\(zodiac.image)")
                    .resizable()
                    .scaledToFill()
                Text("\(zodiac.nameth) (\(zodiac.name))")
                    .font(Font.system(size:35))
                    .bold()
                Text(zodiac.birthtext)
                    .font(Font.system(size:25))
                    .bold()
                Divider()
                Text(zodiac.predict)
                    .font(Font.system(size: 25))
                Spacer()
            }
            .padding(.horizontal)
        }
    }
}

struct ZodiacDetailView_Previews: PreviewProvider{
    static var previews: some View{
        let model = ZodiacModel()
        ZodiacDetailView(zodiac: model.zodiacs[0])
    }
}
