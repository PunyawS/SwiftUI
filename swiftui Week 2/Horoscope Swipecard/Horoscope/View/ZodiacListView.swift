//
//  ContentView.swift
//  Horoscope
//
//  Created by Chonlada on 7/1/2565 BE.
//

import SwiftUI

struct ZodiacListView: View {
    @EnvironmentObject var model: ZodiacModel
    
    var body: some View {
//List Zodiacs Page
        NavigationView {
            List(model.zodiacs) { z in
                NavigationLink(
                    destination: ZodiacDetailView(zodiac:z),
                    label: {
                        HStack(spacing: 20) {
                            Image("Zodiac/\(z.image)")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 80, height: 80, alignment: .center)
                                .clipped()
                                .cornerRadius(5)
                            Text(z.nameth)
                        }
                    })
            }
            .navigationTitle("ดูดวง 12 ราศี")
           // .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ZodiacListView()
    }
}
