//
//  ContentView.swift
//  LoadAPI_2
//
//  Created by Train2 on 12/1/2565 BE.
//

import SwiftUI


struct ZodiacRow: View {
    
    @ObservedObject var ReadAPI = ZodiacAPI.init()

    var body: some View {
            List(ReadAPI.zodiac){ Item in
                VStack{
                    if ReadAPI.loading {
                        Text("Loading...")
                    }else{
                        HStack{
                            if #available(iOS 15.0, *){
                                AsyncImage.init(url: URL(string: Item.image ?? "")) { img in
                                    img
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .clipped()
                                } placeholder: {
                                    ProgressView()
                                }.frame(width: 90, height: 90).cornerRadius(20)
                                    .padding(.trailing)
                            }else{
                                //Fallback on earlier Versions
                                
                                LoadInageView.init(paht_load: Item.image ?? "")
                                    .frame(width: 90, height: 90)
                                    .aspectRatio(contentMode: .fit)
                            }
                           
                            
                        VStack(alignment: .leading){
                                Text(Item.title)
                                    .bold()
                                Text(Item.remark ?? "")
                            
                            HStack {
                                Text("\(Int(Item.total_view)) views")
                                    .foregroundColor(.gray).font(.system(size:14))
                                Spacer()
                                Text(Item.artide_date.shortDate())
                                    .foregroundColor(.gray).font(.system(size:14))
                            }
                        }
                        Spacer()
                    }.padding(.all)
                }
            }
        }
    }
}

extension String{
    
    func shortDate() -> String {
        //String to Date
        let df = DateFormatter()
        df.dateFormat = "dd/MM/yyyy"
        let date = df.date(from: self)
        
        //Date to String
        let df2 = DateFormatter()
//        df2.dateFormat = "d MMMM yyyy"
        df2.dateStyle = .medium
        df2.locale = Locale.init(identifier: "th_TH")
        let str = df2.string(from: date!)
        //Date today is Date()
//        let str = df2.string(from: Date())
        
        return str
    }
}





