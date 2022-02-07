//
//  ContentView.swift
//  3rd week
//
//  Created by Train3 on 21/1/2565 BE.
//

import SwiftUI

struct ContentView: View {
    
    @State var UserName = ContentView.getUserDatafromUSDF()
    @State var LastDateUpdated = ContentView.getDatefromUSDF()
    @State var LastTimeUpdated = ContentView.getTimefromUSDF()
    
    @State private var mainTextColor = ContentView.getTextColorfromUSDF()
    @State private var mainBgColor = ContentView.getBgColorfromUSDF()
    
    var body: some View {
        NavigationView {
            ZStack {
                
                Color.init(hex: mainBgColor)
                
                VStack(spacing: 20) {
                    HStack {
                        if UserName == "" {
                            Text("ผู้ใช้งานใหม่")
                                .foregroundColor(Color.init(hex: mainTextColor))
                        } else {
                            HStack {
                                Text("User: ")
                                
                                Text("\(UserName)")
                                    .foregroundColor(Color.init(hex: mainTextColor))
                            }
                        }
                        
                        NavigationLink(destination:
                            EditView()
                        , label: {
                            Text("Edit")
                                .buttonStyle(BorderedButtonStyle())
                        })
                    }
                    .onAppear {
                        UserName = ContentView.getUserDatafromUSDF()
                        mainTextColor = ContentView.getTextColorfromUSDF()
                        mainBgColor = ContentView.getBgColorfromUSDF()
                    }
                    
                    HStack {
                        Text("Last updated: ")
                        if LastDateUpdated == "" {
                            Text("-")
                        } else {
                            Text("\(LastDateUpdated) \(LastTimeUpdated)")
                        }
                    }
                    .onAppear {
                        LastDateUpdated = ContentView.getDatefromUSDF()
                        LastTimeUpdated = ContentView.getTimefromUSDF()
                    }
                    
                    //Text("\(ColorData.Colors[0].color_bg[0].code)")
                    
                    NavigationLink(destination: SettingView(), label: {
                        Text("ตั้งค่า")
                    })
                    
                    NavigationLink(destination: ETCView(), label: {
                        Text("อื่น ๆ")
                    })
                    
                    .navigationBarHidden(true)
                }
            }
        }
    }
    
    static func getUserDatafromUSDF() -> String {
        var User = ""
        if let UserData = UserDefaults.standard.string(forKey: usdf_keys.user_data) {
            User = UserData
        }
        return User
    }
    
    static func getDatefromUSDF() -> String {
        var Date = ""
        if let DateData = UserDefaults.standard.string(forKey: usdf_keys.date_update) {
            Date = DateData
        }
        return Date
    }
    
    static func getTimefromUSDF() -> String {
        var Time = ""
        if let TimeData = UserDefaults.standard.string(forKey: usdf_keys.time_update) {
            Time = TimeData
        }
        return Time
    }
    
    static func getTextColorfromUSDF() -> String {
        var textcolor = "#000000"
        if let textcolor1 = UserDefaults.standard.string(forKey: usdf_keys.text_color) {
            textcolor = textcolor1
        }
        return textcolor
    }
    
    static func getBgColorfromUSDF() -> String {
        var bg = ""
        if let bg1 = UserDefaults.standard.string(forKey: usdf_keys.bg_color) {
            bg = bg1
        }
        return bg
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
