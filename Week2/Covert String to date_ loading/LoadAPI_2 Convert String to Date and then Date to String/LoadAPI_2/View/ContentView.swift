////
////  ContentViewloading.swift
////  LoadAPI_2
////
////  Created by Train2 on 12/1/2565 BE.
////
//
//import Foundation
//import SwiftUI
//
//struct ContentView:View{
//    
//    @ObservedObject var zodiacAPI = ZodiacAPI()
//    
//    var body: some View{
//        NavigationView{
//            VStack{
//                if zodiacAPI.loading {
//                    Text("Loading...")
//                }else{
//                    List(zodiacAPI.zodiac){ item in
//                        NavigationLink(destination: ZodiacDetails(zodiac: item)){
//                            ZodiacRow.init(ReadAPI: <#T##ZodiacAPI#>)
//                        }
//                    }
//                }
//            }
//            .navigationTitle(Text("ข่าวดูดวง"))
//        }
//    }
//}
//
//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View{
//        ContentView()
//    }
//}
