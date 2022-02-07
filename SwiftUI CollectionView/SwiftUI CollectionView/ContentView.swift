//
//  ContentView.swift
//  SwiftUI CollectionView
//
//  Created by Train2 on 4/1/2565 BE.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            VStack(spacing: 1){
                    Text("สถานที่ท่องเที่ยว").font(.system(size:30.0)).bold()
                Spacer()
                ScrollView{
                    
                    ForEach(0..<3){i in
                        HStack(spacing:25){
                            ForEach(0..<3) { item in Image("doy")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 150, height: 100)
                            }
                        }
                    }
                }
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
