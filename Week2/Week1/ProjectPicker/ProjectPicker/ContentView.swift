//
//  ContentView.swift
//  ProjectPicker
//
//  Created by Train2 on 4/1/2565 BE.
//

import SwiftUI

struct ContentView: View {
    @State private var selected: Int = 0
    var Jobs = ["Programmer","Teacher","Account","IT","Student"]
    private func Filter(){
        print("--Filter--")
    }
    var body: some View {
        let _ = Self._printChanges()
        
        VStack{
            Picker(selection: $selected, label: Text("Jobs")) {
                ForEach (0..<5){
                    Text(Jobs[$0])
                }
            }
            .pickerStyle(WheelPickerStyle())
            .onAppear(perform: Filter)
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
