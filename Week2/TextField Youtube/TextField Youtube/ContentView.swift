//
//  ContentView.swift
//  TextField Youtube
//
//  Created by Train2 on 11/1/2565 BE.
//

import SwiftUI

struct ContentView: View {
    @State var textFieldText: String = ""
    @State var dataArray: [String] = []
    
    var body: some View {
        NavigationView{
            VStack{
                TextField("Type something here...", text: $textFieldText)
        //            .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                    .background(Color.gray.opacity(0.3).cornerRadius(20))
                    .foregroundColor(.red)
                    .font(.headline)
                
                Button(action: {
                    if textIsAppropriate(){
                        saveText()
                    }
                    
                }, label:{
                    Text("Save".uppercased())
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(textIsAppropriate() ? Color.blue : Color.gray)
                        .cornerRadius(20)
                        .foregroundColor(.white)
                        .font(.headline)
                })
                    .disabled(!textIsAppropriate())
                
                ForEach(dataArray, id: \.self){
                    data in
                    Text(data)
                }
                
                Spacer()
            }
            .padding()
            .navigationTitle("TextFiled iOS")
        }
    }
    func textIsAppropriate()->Bool{
        //check text
        if textFieldText.count <= 3{
            return true
        }
        return false
    }
    
    func saveText() {
        dataArray.append(textFieldText)
        textFieldText = ""
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
