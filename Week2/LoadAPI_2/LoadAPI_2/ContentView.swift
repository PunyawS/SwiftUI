//
//  ContentView.swift
//  LoadAPI_2
//
//  Created by Train2 on 12/1/2565 BE.
//

import SwiftUI


struct ContentView: View {
    
    @ObservedObject var ReadAPI = ZodiacAPI.init()

    var body: some View {
            List(ReadAPI.zodiac){ Item in
                VStack{
                    HStack{
                        AsyncImage.init(url: URL(string: Item.image ?? "")) { img in
                            img
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .clipped()
                        } placeholder: {
                            ProgressView()
                        }.frame(width: 90, height: 90).cornerRadius(20)
                            .padding(.trailing)
                        
                    VStack(alignment: .leading){
                        Group{
                            Text(Item.title)
                                .bold()
                            Text(Item.remark ?? "")
                        }

                        HStack {
                            Text("\(Int(Item.total_view))")
                                .foregroundColor(.gray)
                            Spacer()
                            Text(Item.artide_date).foregroundColor(.gray)
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
