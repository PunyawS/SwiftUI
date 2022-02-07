//
//  Aquarius.swift
//  2022
//
//  Created by Train2 on 7/1/2565 BE.
//

import SwiftUI

struct F_Aquarius: View {
    //Binding ผูก View กับ View Model ด้วยการประกาศ @ObservedObject
    @ObservedObject var datas = ReadData() //เรียก class readData
    
    var body: some View {
//        List(self.datas.zodiacs) { zodiac in
            VStack{
                Image(self.datas.zodiacs[0].image)
                    .resizable()
                    .frame(width: 150, height: 150, alignment: .center)
                Text(self.datas.zodiacs[0].name)
                    .bold()
                    .font(.title)
                
                Text(self.datas.zodiacs[0].birthtext)
                    .font(.title2)
                    .bold()
                    
                Divider()
                Text(self.datas.zodiacs[0].predict)
            }
//        }
    }
}


struct F_Aquarius_Previews : PreviewProvider {
    static var previews: some View{
        F_Aquarius()
    }
}
