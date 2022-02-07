//
//  ContentView.swift
//  horocard
//
//  Created by Train2 on 11/1/2565 BE.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var dataCard = Readata()
    
    @State var numberID = ""
    @State var commit = "0000000000000"
    
    
    var body: some View {
//        NavigationView {
        ZStack{
//                Image("bg")
//                    .resizable()
//                    .ignoresSafeArea(.all)
            VStack{
                Text("ดูดวงเลขบัตรประชาชน").foregroundColor(.white).padding(.top)
                TextField("กรอกเลขบัตรประชาชน ​13 หลัก", text: $numberID)
                    .keyboardType(.numberPad)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .background(Color.gray.opacity(0.3).cornerRadius(20))
                    .padding()
                    .onReceive(numberID.publisher.collect()) {
                            numberID = String($0.prefix(13))
                    }
                let number1 = commit.suffix(1)
                   
                let commit2 = commit.dropLast()
                let number2 = commit2.suffix(1)
                   
                let commit3 = commit2.dropLast()
                let number3 = commit3.suffix(1)
                    
                VStack{
                    Text("เลขท้าย 3 ตัว:")
                    Text(number3)
                    Text(number2)
                    Text(number1)
                }
                Button(action: { commit = numberID
//                        saveText()
                        
                }, label:{
                    Text("ทำนาย".uppercased())
                        .padding()
                        .frame(width: 150,height: 50)
                        .background(Color.blue)
                        .cornerRadius(20)
                        .foregroundColor(.white)
                        .font(.headline)
                    })
                VStack{
                    ForEach(dataCard.datas) { indexs in
                        if number1 == String(indexs.digit){
                                Text(indexs.description)
                        }
                        if number2 == String(indexs.digit){
                                Text(indexs.description)
                        }
                        if number3 == String(indexs.digit){
                                Text(indexs.description)
                        }
                    }
                }
                Spacer()
            }
            .padding()
            .foregroundColor(.red)
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
