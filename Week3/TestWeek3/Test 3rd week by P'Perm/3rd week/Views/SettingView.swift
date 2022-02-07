//
//  SettingView.swift
//  3rd week
//
//  Created by Train3 on 21/1/2565 BE.
//

import Foundation


import SwiftUI

struct SettingView: View {
    
    @ObservedObject var bgColorData = bgColorModel()
    @ObservedObject var textColorData = textColorModel()
    
    @State var bgColor: String = ContentView.getBgColorfromUSDF()
    @State var textColor: String = ContentView.getTextColorfromUSDF()
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        VStack {
            Spacer()
            Text("สีผู้ใช้งาน")
            ScrollView(.horizontal) {
                HStack {
                    ForEach(textColorData.textColors) { item in
                        Button(action: {
                            textColor = item.code
                        }, label: {
                            Color.init(hex: item.code)
                                .frame(width: 50, height: 50)
                                .border(.gray)
                        })
                        
                    }
                }
            }
            Spacer()
            Text("สีพื้นหลัง")
            //ScrollView(.horizontal) {
                HStack {
                    ForEach(bgColorData.bgColors) { item in
                        Button(action: {
                            bgColor = item.code
                        }, label: {
                            Color.init(hex: item.code)
                                .frame(width: 50, height: 50)
                                .border(.gray)
                        })
                    }
                }
            //}

            Spacer()
            
            HStack {
                
                Spacer()
                
                Button(action: {
                    
                   //NotificationCenter.default.post(name: Notification.change_color, object: nil, userInfo: ["bg": bgColor, "text": textColor])
                    
                    UserDefaults.standard.set(textColor, forKey: usdf_keys.text_color)
                    UserDefaults.standard.synchronize()
                    
                    UserDefaults.standard.set(bgColor, forKey: usdf_keys.bg_color)
                    UserDefaults.standard.synchronize()

                    self.presentationMode.wrappedValue.dismiss()
                    
                }, label: {
                    
                    Text("บันทึก")
                        .frame(width: 100)
                    
                })
                
                    .buttonStyle(BorderedButtonStyle())
                Spacer()
                
                Button(action: {
                    
                    self.presentationMode.wrappedValue.dismiss()
                    
                }, label: {
                    
                    Text("ยกเลิก")
                        .frame(width: 100)
                    
                })
                    .buttonStyle(BorderedButtonStyle())
                Spacer()
            }
            Spacer()
        }
        .padding()
    }
}

struct SettingView_Previews: PreviewProvider {
    static var previews: some View {
        SettingView()
    }
}
