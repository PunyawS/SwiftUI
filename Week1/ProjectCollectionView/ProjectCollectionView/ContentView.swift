//
//  ContentView.swift
//  ProjectCollectionView
//
//  Created by Train2 on 4/1/2565 BE.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            VStack(spacing: 5){
                    Text("ทดสอบรูป").font(.system(size:30)).bold()
                Spacer()
                ScrollView{
                    
                    ForEach(0..<15){i in HStack(spacing:10){
                            ForEach(0..<3){ item in Image("Test101")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 50, height:50, alignment: .center)
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
