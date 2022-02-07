//
//  ContentView.swift
//  Picker Demo
//
//  Created by Train2 on 7/1/2565 BE.
//

import SwiftUI

struct ContentView: View {
    
    @State var selectedIndex = 2
    
    var body: some View {
        
        VStack{
            Picker("Tap me!", selection: $selectedIndex){
                Text("Optione 1").tag(1)
                Text("Optione 2").tag(2)
                Text("Optione 3").tag(3)
            }
            .pickerStyle(SegmentedPickerStyle()) //DefaultPickerStyle or WheelPickerStyle()
            
            Text("You're selected: \(selectedIndex)")
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
