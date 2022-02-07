//
//  HoroView1.swift
//  HoroApp
//
//  Created by Chonlada on 5/1/2565 BE.
//

import SwiftUI

struct HoroView1: View {
    @EnvironmentObject var menu: MenuModel

    var zodiacs = ["Leo","Libra","Scorpio","Taurus","Virgo","Aries","Cancer","Capricorn","Gemini","Sagittarius","Taurus","Aquarius"]
    //var zodiacs = ["ราศีมังกร","ราศีกุมภ์","ราศีมีน","ราศีเมษ","ราศีพฤษก","ราศีเมถุน"]

    @State var selection: String?
    
    var body: some View {
        ZStack{
            Image("background")
                .resizable()
                .ignoresSafeArea()
                NavigationView{
                    List(zodiacs, id: \.self,selection: $selection) { zodiac in
                        NavigationLink(
                            destination:
                                Text("ราศี : \(zodiac)"),
                            label: {
                                VStack{
                                    Text(zodiac)
                                        .font(Font.system(size: 35))
                                        .padding(.trailing)
                                        .frame(width: 200, height: 45)


                                    Image("Zodiac/\(zodiac)")
                                        .resizable()
                                        .frame(width: 200, height: 200)
                                        .padding(.all)
                                }
                            }
                        )
                            .listStyle(.plain)
                        
                    }
                    .navigationBarTitle(Text("Horoscope"))
                }
        }
    }
}

struct HoroView1_Previews: PreviewProvider {
    static var previews: some View {
        HoroView1()
    }
}
