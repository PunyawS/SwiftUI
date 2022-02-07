//
//  ContentView.swift
//  AtkPro
//
//  Created by Train1 on 13/1/2565 BE.
//

import SwiftUI



struct ContentView: View {
    @ObservedObject var atks = AtkModel()
    @State private var showWeb:Bool = false
//    private let strURL:String = "https://jsonkeeper.com/b/3RVV"
    @State var webView:WebView2?
    private let urlFile = Bundle.main.url(forResource: "ATK", withExtension: "pdf")!
    @State private var showPDF = false

    
    
    var body: some View {
        NavigationView {
            
            VStack {
                List(atks.atk) { p in
                NavigationLink(destination:
                                
                                ContentView2.init(atk: p),label: {
                                
                    
            HStack{
                  VStack {
                        HStack{
                           
                            AsyncImage.init(url: URL.init(string: p.image )) { img in
                                img.resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 90, height:90)
                                    .clipped()
                            } placeholder: {
                                ProgressView()
                            }.frame(width:90, height:90).cornerRadius(10)
                            
                            Text(p.title)
                                .bold()
                         }
                       }
                     }
                   })
                 }
                .navigationBarTitle("ตรวจโควิด ATK ด้วยตนเอง")
                Button(action: {
                    showPDF.toggle()
                }, label: {
                    Text("ATK")
                        .font(.title2)
                }).sheet(isPresented: $showPDF) {
                    CustomPDFView.init(url: urlFile)
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
