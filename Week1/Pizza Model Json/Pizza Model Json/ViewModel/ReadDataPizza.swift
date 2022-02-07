//
//  ViewmodelPizza.swift
//  Pizza Model
//
//  Created by Train2 on 6/1/2565 BE.
//

import Foundation

class readDataPizzaModel: ObservableObject{
    
    @Published var pizzas = [recipePizza]()

    init(){
        loadData()
    }
    
    func loadData(){
        guard let url = Bundle.main.url(forResource: "pizzas", withExtension: "json")
        else{
            print("Json file not found")
            return
        }
        let data = try? Data(contentsOf: url)
        let pizzas = try? JSONDecoder().decode([recipePizza].self, from: data!)
        self.pizzas = pizzas??
    }
}
