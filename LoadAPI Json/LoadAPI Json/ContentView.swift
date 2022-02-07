//
//  ContentView.swift
//  LoadAPI Json
//
//  Created by Train2 on 12/1/2565 BE.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var Readdata_Api = ZodiacManager.init()
    
    var body: some View {
        ScrollView{
            VStack{
                HStack{
                    Spacer()
                    AsyncImage(url: URL(string: "https://starvision.in.th/trainiosdev/apifile02.json")) {
                        image in image
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                    } placeholder: {
                        ProgressView()
                    }
//                        .resizable()
//                        .aspectRatio(contentMode: .fill)
                        .frame(width: 80, height: 80, alignment: .center)
                        .clipShape(Rectangle())
                        .cornerRadius(20)
                    Spacer()
                    VStack(alignment: .leading){
                        Group{
                            Text("aaaaaaa")
                            Text("ddddd")
                        }.font(.title)
                        
                        HStack {
                            Text("1.3K").foregroundColor(.gray)
                            Spacer()
                            Text("12/12/12").foregroundColor(.gray)
                        }
                    }
                    Spacer()
                }.padding(.all)
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
