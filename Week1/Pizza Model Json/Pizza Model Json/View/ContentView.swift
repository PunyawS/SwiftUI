//
//  ContentView.swift
//  Pizza Model
//
//  Created by Train2 on 6/1/2565 BE.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var dataPizza = readDataPizzaModel()
    
    var body: some View {
        VStack{
            List(self.dataPizza.pizzas) { pizza in
                VStack{
                    Text(pizza.name)
                        .font(.headline)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    HStack{
                        ForEach (pizza.toppings, id:\.self) { topping in Text("\(topping)")
                                .font(.system(size: 14, weight: .bold, design: .default))
                                .fontWeight(.regular)
                                .frame(maxWidth: .infinity, alignment: .leading)
                        }
                    }
                }
            }
        }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
