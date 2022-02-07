//
//  ContentView.swift
//  SwiftUI NavigationLink
//
//  Created by Train2 on 4/1/2565 BE.
//

import SwiftUI

struct ContentView: View {
    @StateObject var menu = MenuModel()
    let menuArray = ["Menu 1", "Menu 2"]
    var body: some View {
        NavigationView {
            VStack (spacing: 20){
//                Button("Menu 1") {
//                    menu.menu_on = 1
//                }
//                Button("Menu 2") {
//                    menu.menu_no = 2
//                }
                ForEach (0..<menuArray.count) { no in Button(menuArray[no]) { menu.menu_no = no+1
                }
            }
                NavigationLink(destination: DetailView()) {
                    //Present new view
                    Text("Show Detail View")
                }
            }
            .frame(height: 200)
        }
        .environmentObject(menu) //Share ข้อมูลระหว่างมุมมอง
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
