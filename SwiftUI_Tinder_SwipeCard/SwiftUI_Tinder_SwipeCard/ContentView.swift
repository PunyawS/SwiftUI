//
//  ContentView.swift
//  SwiftUI_Tinder_SwipeCard
//
//  Created by Train2 on 10/1/2565 BE.
//

import SwiftUI

struct ContentView: View {
    
    @State var x : [CGFloat] = [0,0,0,0,0,0,0]
    @State var degree : [Double] = [0,0,0,0,0,0,0]
    
    var body: some View {
        //Create Card
        ZStack{
            
            Color.black.opacity(0.05).edgesIgnoringSafeArea(.all)
            
            Button(action: {
                for i in 0..<self.x.count{
                    self.x[i] = 0
                }
                for i in 0..<self.degree.count{
                    self.degree[i] = 0
                }
            }){
                Image(systemName: "return").font(.title)
            }
            
            ZStack{
                
                ForEach(0..<7 ,id: \.self){ index in
                    
                    Card()
                    .offset(x: self.x[index])
                    .rotationEffect(.init(degrees: self.degree[index]))
                    .gesture(DragGesture()
                        .onChanged({(value) in
                        
                        if value.translation.width > 0{
                            self.x[index] = value.translation.width
                            self.degree[index] = 8
                        }else{
                            self.x[index] = value.translation.width
                            self.degree[index] = -8
                        }
                    })
                    .onEnded({(value) in
                        
                        if value.translation.width > 0{
                            if value.translation.width > 100{
                                self.x[index] = 500
                                self.degree[index] = 12
                            }else{
                                self.x[index] = 0
                                self.degree[index] = 0
                            }
                            
                        }else{
                            if value.translation.width < 100{
                                self.x[index] = -500
                                self.degree[index] = -15
                            }else{
                                self.x[index] = 0
                                self.degree[index] = 0
                            }
                        }
                            
                    }))
                }
                
                
            }.padding()
                .animation(.default)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct Card : View {
    var body: some View{
        
        ZStack(alignment: .bottomLeading){
            //Create UI Card
            VStack{
                Image("bg")
                    .resizable()
                    .frame(height: 400)
                
                HStack(spacing: 25){
                    
                    Button(action: {
                    
                    }) {
                        Image("clear")
                            .resizable()
                            .renderingMode(.original)
                            .frame(width: 25, height: 25)
                            .padding()
                    }.background(Color.black.opacity(0.02))
                        .clipShape(Circle())
                    
                    Button(action: {
                    
                    }) {
                        Image("heart")
                            .resizable()
                            .renderingMode(.original)
                            .frame(width: 25, height: 25)
                            .padding()
                    }.background(Color.black.opacity(0.02))
                        .clipShape(Circle())
                    
    //                Button(action: {
    //
    //                }) {
    //                    Image("star")
    //                        .resizable()
    //                        .renderingMode(.original)
    //                        .frame(width: 25, height: 25)
    //                        .padding()
    //                }.background(Color.black.opacity(0.02))
    //                    .clipShape(Circle())
                    
                    Button(action: {
                    
                    }) {
                        Image("chat")
                            .resizable()
    //                        .foregroundColor(.purple)
                            .frame(width: 25, height: 25)
                            .foregroundColor(.purple)
                            .padding()
                    }.background(Color.black.opacity(0.02))
                        .clipShape(Circle())
                    
                    Button(action: {
                    
                    }) {
                        Image("current")
                            .resizable()
    //                        .foregroundColor(.blue)
                            .frame(width: 25, height: 25)
                            .foregroundColor(.blue)
                            .padding()
                    }.background(Color.black.opacity(0.02))
                        .clipShape(Circle())
                }
                .padding(10)
            }
            .background(Color.white)
            .cornerRadius(25)
            
            VStack(alignment: .leading, spacing: 12){
                Text("Catherine")
                    .font(.title)
                    .foregroundColor(.white)
                    .fontWeight(.bold)
                
                Text("25")
                    .font(.body)
                    .foregroundColor(.white)
                    .fontWeight(.bold)
                
            }.padding(.bottom,100)
                .padding(.leading,10)
        }
    }
}
        
        
