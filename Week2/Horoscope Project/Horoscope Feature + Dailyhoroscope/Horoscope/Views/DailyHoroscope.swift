//
//  ContentView.swift
//  Challenge Dailyhoroscope_SwipeCard
//
//  Created by Train2 on 10/1/2565 BE.
//

import SwiftUI

struct DailyHoroscope: View {
    @ObservedObject var datas = Model()
    @State var daypage = 0
    var DaysArray = ["อา.", "จ.", "อ.", "พ.", "พฤ.", "ศ.", "ส."]
    
    var body: some View {
        ZStack {
            Image("bg")
                .resizable()
                .ignoresSafeArea(.all)
            
            VStack {
                Text("ดูดวงรายวัน วันที่ 11/01/65")
                    .bold()
                    .font(Font.custom("Kanit", size: 25))
                    .foregroundColor(.white)
                    .padding()
    
                Text("เลือกดวงรายวัน").foregroundColor(.white)
                    .font(Font.custom("Kanit", size: 18))
                    .padding()
//Picker
                Picker("Day",selection: $daypage){
                    ForEach(0..<DaysArray.count){ index in
                        Text(DaysArray[index]).tag(index)
                    }
                }
                .pickerStyle(SegmentedPickerStyle())
                .foregroundColor(.white)
                .background(Color.yellow)
              //Image Days
                Image("tiitle\(daypage+1)")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                ZStack{
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color.yellow)
                            
                    VStack(alignment: .leading){
                        Spacer()
                        HStack{
                            Text("หน้าที่การงาน: ")
                            Spacer()
                        }
                        //Text("AAA")
                        Text(datas.horosDays[daypage].work).padding(.leading)
                        Spacer()
                        HStack{
                            Text("การเงิน: ")
                        }
                        Text(datas.horosDays[daypage].finance).padding(.leading)
                        Spacer()
                        HStack{
                            Text("ความรัก: ")
                        }
                        Text(datas.horosDays[daypage].love).padding(.leading)
                        Spacer()
                    }
                    .font(Font.system(size: 25))
                    .padding()
                }
            }
            .padding()
        }
    }
}




struct DailyHoroscope_Previews: PreviewProvider {
    static var previews: some View {
        DailyHoroscope()
    }
}
