//
//  ContentView.swift
//  TestWeek
//
//  Created by Train2 on 7/1/2565 BE.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var datas = ReadData()

    var body: some View {
        NavigationView{
            List(self.datas.zodiacs) { zodiac in
                NavigationLink(destination: {
                    // 2. ทำนาย
//                    ScrollView{
                    VStack(alignment: .leading){
                        Image(zodiac.image)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .ignoresSafeArea()
                        Text("\(zodiac.nameth) \(zodiac.name)")
                            .font(.title)
                            .fontWeight(.bold)
                        Text(zodiac.birthtext)
                            .font(.title)
                        Divider()
                        
                        Text(zodiac.predict)
                    }.padding()
//                    }
                }, label: {
                    // 1. เลือกราศี
                    HStack(spacing: 50){
                        Image(zodiac.image)
                            .resizable()
                            .frame(width: 60, height: 60)
                        Text(zodiac.nameth)
                    }
                })
            }
            .listStyle(PlainListStyle())
            .navigationBarTitle(Text("ดูดวง 12 ราศี").font(.headline))
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
