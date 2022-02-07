//
//  ContentView.swift
//  TestWeek
//
//  Created by Train2 on 7/1/2565 BE.


import SwiftUI

struct Notuse: View {
    var body: some View {
        NavigationView{
            VStack{
                List{
                    Text("ดูดวง 12 ราศี")
                        .font(.title)
                        .fontWeight(.heavy)
                    
                    NavigationLink(destination: F_Aquarius()){
                        HStack{
                            Image("Aquarius").resizable().frame(width: 50, height: 50)
                            Text("ราศีกุมภ์")
                        }
                    }
                    NavigationLink(destination: F_Aries()){
                        HStack{
                            Image("Aries").resizable().frame(width: 50, height: 50)
                            Text("ราศีเมษ")
                        }
                    }
                    NavigationLink(destination: F_Cancer()){
                        HStack{
                            Image("Cancer").resizable().frame(width: 50, height: 50)
                            Text("ราศีกรกฎ")
                        }
                    }
                    NavigationLink(destination: F_Capricorn()){
                        HStack{
                            Image("Capricorn").resizable().frame(width: 50, height: 50)
                            Text("ราศีมังกร")
                        }
                    }
                    NavigationLink(destination: F_Gemini()){
                        HStack{
                            Image("Gemini").resizable().frame(width: 50, height: 50)
                            Text("ราศีเมถุน")
                        }
                    }
                    NavigationLink(destination: F_Leo()){
                        HStack{
                            Image("Leo").resizable().frame(width: 50, height: 50)
                            Text("ราศีสิงห์")
                        }
                    }
                    NavigationLink(destination: F_Libra()){
                        HStack{
                            Image("Libra").resizable().frame(width: 50, height: 50)
                            Text("ราศีตุลย์")
                        }
                    }
                    NavigationLink(destination: F_Pisces()){
                        HStack{
                            Image("Pisces").resizable().frame(width: 50, height: 50)
                            Text("ราศีมีน")
                        }
                    }
                    NavigationLink(destination: F_Sagittarius()){
                        HStack{
                            Image("Sagittarius").resizable().frame(width: 50, height: 50)
                            Text("ราศีธนู")
                        }
                    }
//                    NavigationLink(destination: F_Sagittarius()){
//                        HStack{
//                            Image("Sagittarius").resizable().frame(width: 50, height: 50)
//                            Text("ราศีธนู")
//                        }
//                    }
                }
            }
        }
    }
}

struct Notuse_Previews: PreviewProvider {
    static var previews: some View {
        Notuse()
    }
}

