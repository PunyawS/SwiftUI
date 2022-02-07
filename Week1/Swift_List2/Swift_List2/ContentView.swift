//
//  ContentView.swift
//  Swift_List2
//
//  Created by Train2 on 6/1/2565 BE.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationLink{
            List(countrys, id:\.self,selection: $selection){
                country in
                
                NavigationLink(
                    destination:
                        Text("Selected Country : \(country)"),
                    lable:{
                        HStack{
                            Image("Flag/\(country)")
                                .resizable()
                                .frame(width: 30, height: 30)
                            Text(country)
                        }
                    }
                )
                    .navigationTitle(Text("Select Country"))
                    //.toolbat{EditButton()}
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
