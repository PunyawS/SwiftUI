//
//  ContentView.swift
//  Week2_Test_ATK
//
//  Created by Train2 on 14/1/2565 BE.
//

import SwiftUI
import URLImage

struct ContentView: View {
    
    @ObservedObject var ReadAPI = ConvertAPI.init()
    
    
    //PDF
    @State private var showPDF = false
    private let urlFile = Bundle.main.url(forResource: "file_atk", withExtension: "pdf")!
    
    //showWeb
    @State private var showWeb:Bool = false
    
    var body: some View {
        NavigationView{
        //List Data e.g. image, Title
            List(ReadAPI.Con_API){ Item in
                VStack(spacing: 5) {
                    HStack(spacing: 20) {
                        //Check Version iOS 15.0 up
                        if #available(iOS 15.0, *){
                            URLImage(url: URL(string: Item.image)!) { image in image
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .clipped()
                                 }.frame(width: 90, height: 90).cornerRadius(20)
                        }
                        //Check can click PDF or Link
                        if Item.can_click == true {
                            if Item.pdf == true {
                                NavigationLink(destination:{ (CustomPDFView.init(url: urlFile))
                                }, label: {
                                    Text(Item.title).foregroundColor(.red)
                                })
                            }else{
                                NavigationLink(destination:{ webModel.init(atkWeblink: Item)
                                }, label: {
                                    Text(Item.title).foregroundColor(.blue)
                                })
                            }
                        }else{
                            Text(Item.title)
                        }
                    }
        
                    HStack {
                        Spacer()
                        Text("\(Item.total_view) views")
                            .font(Font.system(size:14))
                            .foregroundColor(Color.gray)
                    }
                }
            }
            .navigationBarTitle(Text("".getCurrentTime()))
        }
    }
}

//Today Date
extension String{

func getCurrentTime()->String{
    let today = Date()
    let formatter = DateFormatter()
    formatter.dateStyle = .long
    formatter.locale = Locale.init(identifier: "th_TH")
    let TextDate = formatter.string(from: today)
    return TextDate
    }
}
    


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
