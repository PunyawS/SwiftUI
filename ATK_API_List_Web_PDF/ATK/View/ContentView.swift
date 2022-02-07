//
//  ContentView.swift
//  ATK
//
//  Created by Train2 on 13/1/2565 BE.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var atkData = ReadATKAPI()
    
    //Web
    @State private var showWeb:Bool = false
    @State var webView:WebView2?
    
    //PDF
    private let urlFile = Bundle.main.url(forResource: "เลือกซื้อชุดตรวจโควิด_ATK", withExtension: "pdf")!
    
    var body: some View {
        NavigationView{
            VStack {
                List(atkData.Pub_ATK){
                    item in
                    NavigationLink(destination: (
                        VStack(spacing: 5) {
                            webView
                        HStack(spacing: 20){
                            // button
                                Button(action: { webView?.goBack() }) {
                                    Image(systemName: "arrow.left.circle")
                                }.frame(width: 50.0, height: 50.0)
                                
                                Button(action: { webView?.refresh() }) {
                                    Image(systemName: "arrow.clockwise.circle")
                                }.frame(width: 50.0, height: 50.0)
                                
                                Button(action: { webView?.goForward() }) {
                                    Image(systemName: "arrow.right.circle")
                                }.frame(width: 50.0, height: 50.0)
                            }
                            Spacer()
                        }.ignoresSafeArea()
                        .onAppear {
                            webView = WebView2.init(url: URL.init(string: item.link)!)
                        }
                    ),
                                   //Icon & Title
                        label: {
                        AsyncImage.init(url: URL(string: item.image)) { img in
                            img
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .clipped()
                        } placeholder: {
                            ProgressView()
                        }.frame(width: 90, height: 90).cornerRadius(20)
                            .padding(.trailing)
                        Text(item.title)
                    })
                }
                //Button click to PDF
                NavigationLink("เลือกซื้อชุดตรวจโควิด ATK", destination: (CustomPDFView.init(url: urlFile)))
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


//VStack(spacing: 50){
//    webView
//    HStack{
//        Button(action: { webView?.goBack() }) {
//            Image(systemName: "arrow.left.circle")
//        }.frame(width: 50.0, height: 50.0)
//
//        Button(action: { webView?.refresh() }) {
//            Image(systemName: "arrow.clockwise.circle")
//        }.frame(width: 50.0, height: 50.0)
//
//        Button(action: { webView?.goForward() }) {
//            Image(systemName: "arrow.right.circle")
//        }.frame(width: 50.0, height: 50.0)
//    }
//}
//Spacer()
