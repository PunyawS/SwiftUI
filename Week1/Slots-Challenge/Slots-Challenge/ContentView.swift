//
//  ContentView.swift
//  Slots-Challenge
//
//  Created by Train2 on 6/1/2565 BE.
//

import SwiftUI

struct ContentView: View {
    
    private var symbols = ["fruit1","fruit2","fruit3"]
    
    @State private var numbers = [0,1,2]
    @State private var credits = 1000
    private var betAmount = 5
    
    var body: some View {
        ZStack{
            VStack(spacing:100){
                Text("SwiftUI Slots")
                    .font(.system(size: 30))
                Text("Credit: " + String(credits))
                VStack(spacing:50){
                    HStack{
                        //Image("fruit\(slot1)")
                        Image(symbols[numbers[0]])
                            .resizable()
                            .frame(width: 100, height: 100)
                        //Image("fruit\(slot2)")
                        Image(symbols[numbers[1]])
                            .resizable()
                            .frame(width: 100, height: 100)
                        //Image("fruit\(slot3)")
                        Image(symbols[numbers[2]])
                            .resizable()
                            .frame(width: 100, height: 100)
                    }
                    Button(action:{
                        //self.numbers[0] = Int.random(in: 0...2)
                        //self.numbers[1] = Int.random(in: 0...2)
                        //self.numbers[2] = Int.random(in: 0...2)
                    //Logic game
                        //Change the images
                        self.numbers[0] = Int.random(in: 0...self.symbols.count - 1)
                        self.numbers[1] = Int.random(in: 0...self.symbols.count - 1)
                        self.numbers[2] = Int.random(in: 0...self.symbols.count - 1)
                        
                        //Check winning
                        if self.numbers[0] == self.numbers[1] &&  self.numbers[1] == self.numbers[2]{
                            
                            //Won
                            self.credits = self.credits + self.betAmount * 10
                        }
                        else{
                            self.credits = self.credits - self.betAmount
                        }
                    },
                           label: {
                        ZStack{
//                            Circle()
//                                .foregroundColor(.red)
//                                .frame(width: 75, height: 75)

                            Text("Spin")
                                .foregroundColor(Color.white)
                                .bold()
                                .padding(.all,10)
                                .padding([.leading,.trailing],30)
                                .background(.red)
                                .cornerRadius(20)
                            
                        }
                    })
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
