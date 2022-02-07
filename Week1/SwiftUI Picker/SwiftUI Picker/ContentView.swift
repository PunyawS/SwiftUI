//
//  ContentView.swift
//  SwiftUI Picker
//
//  Created by Train2 on 4/1/2565 BE.
//

import SwiftUI

struct ContentView: View {
    @State private var selected: Int = 0
    var genders = ["Male","Female","LGBT","Others"]
    
    private func Filter(){
        print("----Filer-----")
    }
    var body: some View {
        let _ = Self._printChanges()
        
        VStack{
            Picker(selection: $selected,label: Text("Gender")) {
                ForEach (0..<4){
                    Text(genders[$0])
                }
//                ForEach (0..<3){ n in Text(genders[n])}
            }
            .pickerStyle(WheelPickerStyle())
            
            .onAppear(perform: Filter)
            
            .onChange(of: selected) { _ in Filter()}
            Text("Select = \(selected)")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
