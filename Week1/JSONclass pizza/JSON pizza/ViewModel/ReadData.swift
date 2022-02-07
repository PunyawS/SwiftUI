//
//  ReadData.swift
//  JSON pizza
//
//  Created by Train3 on 6/1/2565 BE.
//

import Foundation
import SwiftUI

class PizzaModel: ObservableObject {
    
    @Published var Pizzas = [Pizza]()
    //let PizzaName = ["Meat Lovers", "Hawaiian", "Deluxe"]
    
    init() {
        self.Pizzas = ReadData.getLocalData()
        print("get")
    }
}

class ReadData {
    static func getLocalData() -> [Pizza] {
        
        let pathString = Bundle.main.path(forResource: "pizzas", ofType: "json")
        
        guard pathString != nil else {
            return [Pizza]()
        }
        
        let url = URL(fileURLWithPath: pathString!)
        print(url)
        do {
            let data = try Data(contentsOf: url)
            print("assin data")
            let decoder = JSONDecoder()
            print("assign decoder")
            
            do {
                var decodedData = try decoder.decode([Pizza].self, from: data)
                print("decode done")
                
                for i in decodedData {
                    i.id = UUID()
                }
                
                return decodedData
            } catch {
                print("error decoding")
            }
            
        } catch {
            print("error assign data/decoder")
        }
        return [Pizza]()
    }
}
