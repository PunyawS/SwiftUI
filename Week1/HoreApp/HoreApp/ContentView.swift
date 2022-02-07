//
//  ContentView.swift
//  HoreApp
//
//  Created by Train2 on 5/1/2565 BE.
//

import SwiftUI

struct SheetView: View{
    @Binding var showSheetview: Bool
    
    var body: some View{
        NavigationView{
            ZStack{
                VStack{
                    Image("test1")
                    Text("Test word 1")
                    Text("Sheet View content")
                }
//                Text("Sheet View content")
                    .navigationBarTitle(Text("Sheet View"), displayMode: .inline)
                    .navigationBarItems(trailing: Button(action: {
                        print("Dismissing sheet view....")
                    }) {
                        Text("Done").bold()
                    })
            }
        }
    }
}

struct ContentView: View {
    @State var showSheetview = false
    var body: some View {
        ZStack{
                Image("background")
                .resizable()
                .ignoresSafeArea()
            VStack{
                Button(action: {
                    self.showSheetview.toggle()
                }) {
                    Text("ดูดวง 12 ราศี").padding()
                        .background(Color.red)
                        .foregroundColor(.white)
                }.sheet(isPresented: $showSheetview){
                    SheetView(showSheetview: self.$showSheetview)
                }
                Button(action:{
                    print("ดูดวง 2")
                }){
                    Text("ดูดวงรายเดือน").padding()
                        .background(Color.red)
                        .foregroundColor(.white)
                }
                Button(action:{
                    print("ดูดวง 3")
                }){
                    Text("ดูดวงแนะนำ").padding()
                        .background(Color.red)
                        .foregroundColor(.white)
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
