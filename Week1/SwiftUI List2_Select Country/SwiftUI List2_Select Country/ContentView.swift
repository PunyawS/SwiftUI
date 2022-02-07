//
//  ContentView.swift
//  SwiftUI List2_Select Country
//
//  Created by Train2 on 5/1/2565 BE.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            VStack {
                List{
                    Text("Select Country")
                        .font(.title)
                        .fontWeight(.heavy)
                    
                    NavigationLink(destination: Germany()){
                        HStack{
                            Image("Germany").resizable().frame(width: 50, height: 50)
                            Text("Germany")
                        }
                    }
                    
                    NavigationLink(destination: Korea()){
                        HStack{
                            Image("Korea").resizable().frame(width: 50, height: 50)
                            Text("Korea")
                        }
                    }
                    
                    NavigationLink(destination: USA()){
                        HStack{
                            Image("USA").resizable().frame(width: 50, height: 50)
                            Text("USA")
                        }
                    }
                    
                    NavigationLink(destination: UK()){
                        HStack{
                            Image("UK").resizable().frame(width: 50, height: 50)
                            Text("UK")
                        }
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
