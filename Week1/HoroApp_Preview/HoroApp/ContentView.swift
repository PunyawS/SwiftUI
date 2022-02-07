//
//  ContentView.swift
//  HoroApp
//
//  Created by Chonlada on 5/1/2565 BE.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var menu = MenuModel()
    
    var menuArray = ["ดูดวง 12 ราศี", "ดูดวงรายเดือน", "ดูดวงแนะนำ"]
    @State private var isPressed: Bool = false
    
    var body: some View {
        ZStack{
            Image("background")
                .resizable()
                .ignoresSafeArea()
            VStack(spacing : 20){
                ForEach(0..<menuArray.count ) { no in
                    Button(action: {
                        self.isPressed.toggle()
                        menu.menu_no = no + 1
                    }){
                        Text(menuArray[no])
                            .foregroundColor(.white)
                            .font(Font.system(size: 35))
                            .lineLimit(1).fixedSize()
                    }
                    .padding()
                    .buttonStyle(StyledButton())
      
                    .sheet(isPresented: $isPressed){
                        if (menu.menu_no == 1) {
                            HoroView1()
                        } else if (menu.menu_no == 2) {
                            HoroView2()
                        } else {
                            HoroView3()
                        }
                     
                    }
                    .environmentObject(menu)
                }
                
            }
        }
    }
}

struct StyledButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration
            .label
            .foregroundColor(.white)
            .padding()
            .background(Color.orange)
            .cornerRadius(20)
    }
}

func MainMenu() {
    
    print("aaaa")
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
