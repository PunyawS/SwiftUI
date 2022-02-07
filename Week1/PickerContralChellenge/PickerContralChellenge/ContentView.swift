//
//  ContentView.swift
//  PickerContralChellenge
//
//  Created by Train2 on 7/1/2565 BE.
//

import SwiftUI

struct ContentView: View {
    @State private var locationSelection = 0
    @State private var menuSelection = 4
    @State private var timeSelection = 2
    @State private var time = Date()
    var locations = ["US","Germany","Russia","Romania"]
    var menuItem = ["Sweet potato","Pad thai","Fish tacos"]
    let times = ["6 am","7 am","8 am","9 am"]
    
    var body: some View {

 
        VStack(spacing: 80){
            VStack {
                Text("Italian Restaurant")
                    .font(.largeTitle)
                    .bold()
                HStack {
                    Picker("Location: ", selection: $locationSelection){
                        ForEach(0..<locations.count) { index in
                            Text(locations[index]).tag(index)
                        }
                    }
                    .pickerStyle(MenuPickerStyle())
                    
                    Text(locations[locationSelection])
                        .padding(.leading,20)
                }
            }
    
            VStack{
                Text("Order:")
                VStack{
                    Picker("Menu",selection: $menuSelection){
                        ForEach(0..<menuItem.count){ index in
                            Text(menuItem[index]).tag(index)
                        }
                    }
                    .pickerStyle(WheelPickerStyle())
                }
                VStack{
                    Text("Pickup time")
                    Picker("Time",selection: $timeSelection){
                        ForEach(0..<times.count){ index in
                            Text(times[index]).tag(index)
                        }
                    }
                    .pickerStyle(SegmentedPickerStyle())
                    .padding()
                    Button("Pick for me!"){
                        locationSelection = .random(in: 0..<locations.count)
                        menuSelection = .random(in: 0..<menuItem.count)
                        timeSelection = .random(in: 0..<times.count)
                    }
                }
            }

        }
        //.padding()

    }

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
