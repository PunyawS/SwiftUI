//
//  ContentView.swift
//  Pizza Model
//
//  Created by Train2 on 6/1/2565 BE.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var model = pizzaModel()
    
    var body: some View {
        VStack {
            List(model.pizzas) { pizzas in
                VStack{
                    HStack{
                        VStack(alignment: .leading) {
                            Text(pizzas.name)
                                .font(.title)
                            Text(pizzas.topping1)
                            Text(pizzas.topping2)
                            Text(pizzas.topping3)
                        }
                        Spacer()
                        Text(pizzas.price).bold().foregroundColor(Color.red)
                    }
                }
            }
            Button("Add Recipe"){
                model.addPizza()
            }
        }
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
