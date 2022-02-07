//
//  ContentView.swift
//  SwiftUI ScrollView
//
//  Created by Train2 on 5/1/2565 BE.
//

import SwiftUI

struct ContentView: View {
    let numbers = ["1","2","3","4","5"]
    let range = Range (1...5)
    
    var body: some View {
        
        VStack(spacing:50){
            
            List(numbers, id: \.self) { number in Text(number)
        
        }
            
            List(range) { row in Text("row \(row)")
                
        }
        
        ScrollView([.horizontal, .vertical], showsIndicators: true) {
        HStack{
            ForEach (0..<50) { index in Text("\(index)")
                
                    }
                }
            }
        }
        .frame(height: 500)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
