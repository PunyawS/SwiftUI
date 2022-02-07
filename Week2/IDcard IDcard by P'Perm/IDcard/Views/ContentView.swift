//
//  ContentView.swift
//  IDcard
//
//  Created by Train3 on 11/1/2565 BE.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var IDData = IDModel()
    @ObservedObject var idInput = IDInputModel()
    
    @State var commit = "0000000000000"
    @FocusState var numPadOn: Bool
    
    var body: some View {
        ZStack {
            Image("bg")
                .resizable()
                .ignoresSafeArea(.all)
            
            VStack(spacing: 10) {
                
                Text("ดูดวงด้วยเลขบัตรประชาชน")
                    .font(.title)
                    .fontWeight(.bold)
                    .frame(height: 150)
                    .shadow(color: Color.white, radius: 2)
                
                HStack(alignment: .center, spacing: 20) {
                    Text("ID: ")
                        .fontWeight(.bold)
                    TextField("Enter your ID", text: $idInput.IDinput)
                        .keyboardType(.numberPad)
                        .focused($numPadOn)
                }
                .padding()
                .frame(width: 300, height: 100, alignment: .center)
                .background(Color.white)
                .clipShape(RoundedRectangle(cornerRadius: 20))
                
                Button(action: {
                    commit = idInput.IDinput
                    numPadOn = false
                }, label: {
                    Text("ทำนาย")
                        .fontWeight(.bold)
                        .frame(width: 100, height: 60)
                        .foregroundColor(Color.white)
                        .background(Color.pink)
                        .clipShape(RoundedRectangle(cornerRadius: 15))
                        
                })
            
                let firstNo = commit.suffix(1)
                
                let commit2 = commit.dropLast()
                let secondNo = commit2.suffix(1)


                let commit3 = commit2.dropLast()
                let thirdNo = commit3.suffix(1)                
                
                Spacer()
                
                Text("รหัสบัตรประชาชน   \(commit)")
                
                HStack {
                    Text("เลขท้าย 3 ตัว:")
                    Text(thirdNo)
                    Text(secondNo)
                    Text(firstNo)
                }
                    .frame(height: 100)
                    .font(.title2)
                    .shadow(color: Color.white, radius: 2)
                
                ZStack {
                    VStack(spacing: 20) {
                        Spacer()
                        Text("ผลการทำนาย")
                            .font(.title2)
                       
                        ForEach(IDData.IDs) { item in
                            if item.digit == Int(thirdNo) {
                                Text(item.description!)
                            }
                        }
                        ForEach(IDData.IDs) { item in
                            if item.digit == Int(secondNo) {
                                Text(item.description!)
                            }
                        }
                        ForEach(IDData.IDs) { item in
                            if item.digit == Int(firstNo) {
                                Text(item.description!)
                            }
                        }
                        Spacer()
                    }
                }
                .frame(width: 300, height: 200)
                .background(Color.white)
                .clipShape(RoundedRectangle(cornerRadius: 20))
                
                
                Spacer()
                
            }
        }
        
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
