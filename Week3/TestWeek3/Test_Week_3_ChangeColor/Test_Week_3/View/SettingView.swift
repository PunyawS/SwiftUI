//
//  FullScreenView.swift
//  ShowNextView
//
//  Created by Macbook16 on 19/1/2565 BE.
//

import SwiftUI

struct SettingView: View {

    @ObservedObject var ReadAPI = ColorAPI.init()
    
    @Environment(\.presentationMode) private var presentationMode // ใช้ตอนสั่งปิด
    
    //change BG
    @State var bg_color = Color.white
    @State var bg_colorstr : String = ""
    //change Text
    @State var text_color = Color.white
    @State var text_colorstr : String = ""
    
    //save
    @State private var showAlert:Bool = false // เช็คโชว์ alert ปุ่มบันทึก
    
    var body: some View {
        NavigationView {
            ZStack{
                Color.yellow
                    .edgesIgnoringSafeArea(.all)
                VStack {
                    List{
                        //change Text
                        Section(
                            header:
                                HStack {
                                    Text("Color from Text")
                                    Image(systemName: "flame.fill")
                                }
                                .font(.title)
                                .foregroundColor(.blue)
                        ){
                            ForEach(ReadAPI.selectChangeText){index in
                                Button {
//                                    NotificationCenter.default.post(name: Notification.changText, object: Color(hex: index.code))
                                    text_color = Color(hex: index.code)
                                } label: {
                                    Color(hex: index.code)
                                }
                            }
                        }
                        //change BG
                        Section(
                            header:
                                HStack {
                                    Text("Color from BG")
                                    Image(systemName: "star.fill")
                                }
                                .font(.title)
                                .foregroundColor(.blue)
                        ){
                            ForEach(ReadAPI.selectChangeColor){index in
                                Button {
//                                    NotificationCenter.default.post(name: Notification.changeBg, object: Color(hex: index.code))
                                    bg_color = Color(hex: index.code)
                                    bg_colorstr = index.code
                                } label: {
                                    Color(hex: index.code)
                                }
                            }
                        }
                    }
                    Button.init("ปิด") {
                        presentationMode.wrappedValue.dismiss() // สั่ง dismiss() คือปิด
                    }
                }
            }
            .navigationBarTitle("Setting")
            .navigationBarItems(trailing: addButton)
        }
    }
//    Add Button
    var addButton : some View{
        Button.init("บันทึก") {
            showAlert = true
        }.alert("ต้องการบันทึกใช่หรือไม่?", isPresented: $showAlert) {
            Button.init {
                NotificationCenter.default.post(name: Notification.changeBg, object: bg_color)
                NotificationCenter.default.post(name: Notification.changText, object: text_color)
                saveColorToUserdefault(bg_color: bg_colorstr)
                saveTextToUserdefault(text_Color: text_colorstr)
            } label: {
                Text.init("ตกลง")
            }

            Button.init {

            } label: {
                Text.init("ยกเลิก")
            }
        }
        .frame(width: 100, height: 60)
        .foregroundColor(.white)
        .background(Color.blue)
        .cornerRadius(20)
    }
    
    func saveColorToUserdefault(bg_color:String) {
        UserDefaults.standard.set(bg_color, forKey: USDF_Keys.SelectcolorBG) // บันทึก ด้วยคีย์
        UserDefaults.standard.synchronize()
    }
    func saveTextToUserdefault(text_Color:String) {
        UserDefaults.standard.set(text_Color, forKey: USDF_Keys.SelectcolorText) // บันทึก ด้วยคีย์
        UserDefaults.standard.synchronize()
    }
}

struct FullScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SettingView()
    }
}

