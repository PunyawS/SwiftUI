//
//  ContentView.swift
//  SwiftUI Json
//
//  Created by Train2 on 6/1/2565 BE.
//

import SwiftUI

struct ContentView: View {
    //Binding ผูก View กับ View Model ด้วยการประกาศ @ObservedObject
    @ObservedObject var datas = ReadData() //เรียก class readData
    
    var body: some View {
        List(self.datas.zodiacs) { zodiac in
            VStack{
                Text(zodiac.name)
                Text(zodiac.birthtext)
                Text(zodiac.predict)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
