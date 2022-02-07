//
//  ContentView.swift
//  SwiftUI IgnoreSafeArea
//
//  Created by Train2 on 4/1/2565 BE.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Color(UIColor.systemIndigo)
                //.ignoresSafeArea()
            //            ละเว้นขอบส่วนท้าย
//                .ignoresSafeArea(.all, edges:  .top)
//                 ละเว้นขอบด้านบน
                .ignoresSafeArea(.all, edges:  [.bottom,.trailing])
            
            VStack{
                Text("Hello")
                Spacer()
                    .frame(height: 50)
                Text("AAA")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
            ContentView()
        }
    }
}
