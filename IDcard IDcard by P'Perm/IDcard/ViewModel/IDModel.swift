//
//  IDModel.swift
//  IDcard
//
//  Created by Train3 on 11/1/2565 BE.
//

import Foundation

class IDModel: ObservableObject {
    @Published var IDs = [ID]()
    
    init() {
        loadData()
    }
    
    func loadData() {
        guard let url = Bundle.main.url(forResource: "horocard", withExtension: "json")
        else {
            print("file not found")
            return
        }
        
        let data = try? Data(contentsOf: url)
        let IDs = try? JSONDecoder().decode([ID].self, from: data!)
        self.IDs = IDs!
    }
}
