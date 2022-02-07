//
//  ContentView.swift
//  Horoscope
//
//  Created by Train3 on 7/1/2565 BE.
//

import SwiftUI

struct ZodiacListView: View {
    
    @ObservedObject var model = ZodiacModel()
    
    var body: some View {
        NavigationView {
            ZStack {
                List(model.zodiacs) { z in
                    NavigationLink(destination: ZodiacDetailView(zodiac: z), label: {
                        HStack {
                            Image("Zodiac/\(z.image)")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 80, height: 80, alignment: .center)
                                .clipped()
                                .cornerRadius(5)
                            Text(z.nameth)
                                .font(.title)
                        }
                    })
                    .padding(7)
                }
                .listStyle(PlainListStyle())
            }
            .navigationTitle("ดูดวง 12 ราศี")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct ZodiacListView_Previews: PreviewProvider {
    static var previews: some View {
        ZodiacListView()
    }
}
