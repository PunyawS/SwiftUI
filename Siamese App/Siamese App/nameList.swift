//
//  ContentView.swift
//  Siamese App
//
//  Created by Train2 on 14/1/2565 BE.
//

import SwiftUI
import URLImage

struct nameList: View {
    
    @ObservedObject var ReadJsonName = ReadName()
    
    var body: some View {

        NavigationView{
            VStack {
                List(ReadJsonName.Pub_Name){
                    item in
                    HStack {
                        NavigationLink(destination: siameseDetailView(siamese_lower: item), label: {
                            Text(item.name)
                            
                        })
                        URLImage(url: URL(string: item.image)!) { image in image
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .clipped()
                             }.frame(width: 90, height: 90).cornerRadius(20)
                    }
                }
                .navigationTitle("วัด")
                .listStyle(PlainListStyle())
            }
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        nameList()
    }
}
