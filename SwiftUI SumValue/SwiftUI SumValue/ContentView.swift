//
//  ContentView.swift
//  SwiftUI SumValue
//
//  Created by Train2 on 4/1/2565 BE.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            ForEach (0..<3) {
                Text("Sum =\(Sum(num: $0))")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


func Sum(num:Int) -> (Int)
{
    print(num)
    return num+1
}
