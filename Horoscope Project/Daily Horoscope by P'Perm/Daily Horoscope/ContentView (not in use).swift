//
//  ContentView.swift
//  Daily Horoscope
//
//  Created by Train3 on 10/1/2565 BE.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var DailyData = DailyModel()
    @State var page = "อาทิตย์"
    
    var body: some View {
        GeometryReader { geo in
            VStack {
                Text("ดูดวงรายวัน")
                
                Section {
                    Picker("select day", selection: $page) {
                        ForEach(DailyData.Days) { item in
                            Text(item.day).tag(item.day)
                        }
                    }
                    .pickerStyle(SegmentedPickerStyle())
                    
                    //Text(page)
                    
                    VStack {
                        Text("พยากรณ์สำหรับคนเกิด")
                        Text("...................")
                        Text("วัน\(page)")
                    }
                    .frame(height: geo.size.height*0.2)
                    
                    //Text(DailyData.Days[0].day)
                    
                    ForEach(DailyData.Days) { item in
                        VStack(alignment: .leading) {
                            if page == item.day {
                                Text("การงาน:")
                                Text("\(item.work)")
                                Text("การเงิน: \(item.finance)")
                                    .frame(alignment: .leading)
                                Text("ความรัก: \(item.love)")
                            }
                        }
                    }
                }
            }
        }.padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
