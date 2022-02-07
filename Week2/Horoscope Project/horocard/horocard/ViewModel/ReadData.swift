//
//  ReadData.swift
//  horocard
//
//  Created by Train2 on 11/1/2565 BE.
//

import Foundation

class Readata: ObservableObject {
    @Published var datas = [horoCardModel]()
    
    init() {
        loadData()
    }
    
    func loadData() {
        guard let url = Bundle.main.url(forResource: "horocard", withExtension: "json")
        else {
            print("json file not found")
            return
        }
        
        let data = try? Data(contentsOf: url)
        let datas = try? JSONDecoder().decode([horoCardModel].self, from: data!)
        self.datas = datas!
        
//        print("Value in datas : \(datas)")
//        print("Value in data : \(data)")
//        print("self.datas : \(self.datas)")
    }
}
