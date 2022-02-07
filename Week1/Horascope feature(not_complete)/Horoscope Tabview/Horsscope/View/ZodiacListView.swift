//
//  ContentView.swift
//  Horsscope
//
//  Created by Train2 on 7/1/2565 BE.
//

import SwiftUI

struct ZodiacListView: View {
    
    @ObservedObject var model = ZodiacModel()
    
    var body: some View {
        
        NavigationView{
            ZStack{
                List(model.zodiacs) { z in
                    NavigationLink(
                        //หน้า Link ไปหน้าที่ 2
                        destination: ZodiacDetailView(zodiac:z),
                        //หน้าแรก
                        label:{
                            HStack(spacing: 20) {
                                //ภาพราศี
                                Image("Zodiac/\(z.image)")
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 80, height: 80, alignment: .center)
                                    .clipped()
                                    .cornerRadius(5)
                                //ชื่อราศี
                                Text(z.nameth)
                                    .font(.title)
                            }
                        })
                        .padding(7)
                }
                .listStyle(PlainListStyle())
            }
            .navigationBarTitle(Text("ดูดวง 12 ราศี").font(.headline))
            .navigationBarTitleDisplayMode(.inline)
        }
        
    }
}

struct ZodiacListView_Previews: PreviewProvider {
    static var previews: some View {
        ZodiacListView()
    }
}
