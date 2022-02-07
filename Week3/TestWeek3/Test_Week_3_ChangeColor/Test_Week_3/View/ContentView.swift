//
//  ContentView.swift
//  Test_Week_3
//
//  Created by Train2 on 21/1/2565 BE.
//

import SwiftUI

struct ContentView: View {
    
    
    //Show imagesnow
    @State private var Text_name:String = TextFieldView.getDataArray()
    
    
    @State private var str:String = ContentView.getMsgFromUserdefault()
    
//    @State private var showAlert:Bool = false // เช็คโชว์ alert ปุ่มบันทึก
//    @State private var showAlert2:Bool = false // เช็คโชว์ alert ปุ่มลบ
    
    //Color
    @State var bg_color = Color(hex: ContentView.getColorBGUserdefault())
    
    //change Text
    @State var text_color = Color(hex: ContentView.getColorTextUserdefault())
    
    //go to text fieal
    @State private var can_next = false
    @State private var next_settingview = false
    @State private var next_Othermenu = false
    @State private var next_mapmenu = false
    
    
    var body: some View {
    
        //UI
        ZStack {
            if #available(iOS 15.0, *){
                bg_color
                    .edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 50.0){
                
                //Show imagesnow
                HStack {
                    HStack {
                        Text("ผู้ใช้ล่าสุด : ")
                        Text(Text_name)
                            .padding()
                            .font(.system(.title))
                            .foregroundColor(text_color)
                            .background(Color.orange)
                            .cornerRadius(20)
                    }.padding()
                    
                    HStack {
                        Button {
                            next_settingview.toggle()
                            
                        } label: {
                            Text("Edit")
                                .padding()
                                .frame(maxWidth: 55)
                                .font(.caption)
                                .foregroundColor(.white)
                                .background(Color.blue)
                                .cornerRadius(20)
                        }
                        .fullScreenCover(isPresented: $next_settingview) {
                                TextFieldView()
                        }
                    }
                }
                
                //return string func
                Text.init(str).font(.system(size: 20)).foregroundColor(.white)
                
                //Other Setting
                VStack(spacing: 20.0) {
                    Button {
                        can_next.toggle()
                        
                    } label: {
                        Text("Setting")
                            .padding()
                            .frame(maxWidth: 150)
                            .font(.title)
                            .foregroundColor(.white)
                            .background(Color.gray)
                            .cornerRadius(20)
                    }
                    .fullScreenCover(isPresented: $can_next) {
                            SettingView()
                    }
                    Button {
                        next_mapmenu.toggle()
                    } label: {
                        Text("MapView")
                            .padding()
                            .frame(maxWidth: 150)
                            .foregroundColor(.white)
                            .background(Color.green)
                            .cornerRadius(20)
                    }
                    .fullScreenCover(isPresented: $next_mapmenu) {
                            MapView()
                    }

                }
            }
        }
    }

        
    //change background
    .onReceive(NotificationCenter.default.publisher(for: Notification.changeBg)) { noti in
        if let color = noti.object {
            bg_color = color as! Color
        }
    }
        
    //change Text
    .onReceive(NotificationCenter.default.publisher(for: Notification.changText)) { noti in
        if let color = noti.object {
            text_color = color as! Color
        }
    }
        
    //Show LastName Add
    .onReceive(NotificationCenter.default.publisher(for: Notification.editName)) { notification in
        if let obj = notification.object {
            Text_name = obj as! String
       }
    }
    
        //แก้ไขสำเร็จ
    .onReceive(NotificationCenter.default.publisher(for: Notification.tabEditName)) { notification in
        if let userInfo = notification.userInfo { // เช็คว่ามีค่ามั้ย
           print(userInfo)
            if let text = userInfo["text"] {
                self.str = "\(text)"
            }
           }
        }
    }
      
    //Create func return String
    static func getMsgFromUserdefault() -> String {
        var str:String = "กดปุ่ม Edit เพื่อแก้ไขชื่อ"
        if let str_save = UserDefaults.standard.object(forKey: USDF_Keys.showTextTabEditName) {
            str = "\(str_save)"
        }
        return str
    }
    
    static func getColorBGUserdefault() -> String {
        var color:String = ""
        if let color_save = UserDefaults.standard.object(forKey: USDF_Keys.SelectcolorBG){
            color = "\(color_save)"
        }
        return color
    }
    
    static func getColorTextUserdefault() -> String {
        var textColor:String = ""
        if let textColor_save = UserDefaults.standard.object(forKey: USDF_Keys.SelectcolorText){
            textColor = "\(textColor_save)"
        }
        return textColor
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

