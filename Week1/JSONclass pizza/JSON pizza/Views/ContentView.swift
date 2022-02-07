//
//  ContentView.swift
//  JSON pizza
//
//  Created by Train3 on 6/1/2565 BE.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var PizzaData = PizzaModel()
    
    var body: some View {
        List(self.PizzaData.Pizzas) { item in
            VStack(alignment: .leading) {
                Text(item.name).font(.title)
                HStack{
                    ForEach(item.toppings, id: \.self) {topping in
                        Text(topping)
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
