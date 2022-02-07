//
//  ContentView.swift
//  SwiftUI Textfiled
//
//  Created by Train2 on 4/1/2565 BE.
//

import SwiftUI

struct ContentView: View {
    @State var textInput:String = ""
    @State var ageInput:Int = 0
    var body: some View {
        VStack{
            HStack{
                Text("First Name :")
                TextField("Enter the first name", text:$textInput,
                    onEditingChanged: {focus in print(focus)
                    },
                onCommit: {
                    print("Done")
                    }
                )
                .padding()
            }
            
            HStack{
                Text("Age :")
                TextField("Enter the age",
                    value: $ageInput,
                    formatter: NumberFormatter()
            )
                    .textFieldStyle(RoundedBorderTextFieldStyle())
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
