//
//  Content View2.swift
//  Daily Horoscope
//
//  Created by Train3 on 11/1/2565 BE.
//

import SwiftUI

struct ContentView2: View {
    
    @ObservedObject var DailyData = DailyModel()
    @State var page = 0
    var dayList = ["อา.", "จ.", "อ.", "พ.", "พฤ.", "ศ.", "ส."]
    
    var body: some View {
        ZStack {
            Image("bg")
                .resizable()
                .ignoresSafeArea(.all)
            
            GeometryReader { geo in
                VStack {
                    Text("ดูดวงรายวัน")
                        .font(.title)
                        .fontWeight(.heavy)
                        .foregroundColor(Color.white)
            
                    Text("ดูดวงรายวันวันที่ 10 มกราคม 2565")
                        .foregroundColor(Color.white)
                    
                    Picker("day selection", selection: $page) {
                        ForEach(0..<dayList.count) { item in
                            Text(dayList[item]).tag(item)
                                
                        }
                    }
                    .pickerStyle(SegmentedPickerStyle())
                    .background(Color.brown)
                    .clipShape(RoundedRectangle(cornerRadius: 8))
                   
                    Image("tiitle\(page+1)")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .clipShape(RoundedRectangle(cornerRadius: 15))
                    
                    ZStack {
                        RoundedRectangle(cornerRadius: 20)
                            .fill(Color.brown)
                        
                        VStack(alignment: .leading) {
                            Spacer()
                            HStack {
                                Text("หน้าที่การงาน: ")
                                Spacer()
                            }
                            Text(DailyData.Days[page].work)
                            Spacer()
                            Text("การเงิน: ")
                            Text(DailyData.Days[page].finance)
                            Spacer()
                            Text("ความรัก: ")
                            Text(DailyData.Days[page].love)
                            Spacer()
                        }
                            .font(.title3)
                            .padding()
                    }
                }
            }
                .padding()
        }
    }
}

struct ContentView2_Previews: PreviewProvider {
    static var previews: some View {
        ContentView2()
    }
}
