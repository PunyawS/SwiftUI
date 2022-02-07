//
//  ContentView.swift
//  War-Challenge
//
//  Created by Train2 on 5/1/2565 BE.
//

import SwiftUI

struct ContentView: View {
    @State var playerCard = ""
    @State var cpuCard = ""
    @State var playerScore = 0
    @State var cpuScore = 0
    
    
    var body: some View {
        ZStack{
            Image("back")
                .resizable()
                .ignoresSafeArea()
            VStack(spacing:50){
                Image("logo")
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 150, height: 50)
                HStack(spacing:20){
                    Image(playerCard)
                        .frame(width:150, height: 200)
                    Image(cpuCard)
                        .frame(width:150, height: 200)
                }
                Button(action: {
                    //update action
                    //Random Card
                    let playerRand = Int.random(in: 2...9)
                    let cpuRand = Int.random(in: 2...9)
                    
                    //Update Card
                    playerCard = "card" + String(playerRand)
                    cpuCard = "card" + String(cpuRand)
                    
                    //Score Player and CPU
                    if playerRand>cpuRand{
                        playerScore = playerScore + 1
                    }
                    else {
                        cpuScore = cpuScore + 1
                    }
                    
                },
                       label:{
                    Image("dealbutton")
                       })
                
                
                HStack(spacing:100){
                    VStack(spacing:20){
                        Text("Player")
                            .foregroundColor(Color.white)
                        Text(String(playerScore))
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                    }
                    VStack(spacing:20){
                        Text("CPU")
                            .foregroundColor(Color.white)
                        Text(String(cpuScore))
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
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
