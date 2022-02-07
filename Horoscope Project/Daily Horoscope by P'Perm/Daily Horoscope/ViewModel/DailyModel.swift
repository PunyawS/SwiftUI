//
//  DailyModel.swift
//  Daily Horoscope
//
//  Created by Train3 on 10/1/2565 BE.
//

import Foundation

class DailyModel: ObservableObject {
    @Published var Days = [Daily]()
    
    init() {
        loadData()
    }
    
    func loadData() {
        guard let url = Bundle.main.url(forResource: "dailyhoroscope", withExtension: "json")
        else {
            print("json file not found")
            return
        }
        
        let data = try? Data(contentsOf: url)
        let Days = try? JSONDecoder().decode([Daily].self, from: data!)
        self.Days = Days!
    }
}
