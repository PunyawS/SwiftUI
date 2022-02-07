//
//  File.swift
//  Challenge Dailyhoroscope_SwipeCard
//
//  Created by Train2 on 10/1/2565 BE.
//

import Foundation

class Model: ObservableObject {
    @Published var horosDays = [Daliyhoro]()
    
    init() {
        loadData()
    }
    
    func loadData() {
        guard let url = Bundle.main.url(forResource: "dailyhoroscope", withExtension: "json")
        else {
            print("json file not found")
            return
        }
//        print("AAAAA \(horosDays)")
        
        let data = try? Data(contentsOf: url)
        let horosDays = try? JSONDecoder().decode([Daliyhoro].self, from: data!)
        self.horosDays = horosDays!
        
//        print("Value in horosDays : \(horosDays)")
//        print("Value in Data : \(data)")
//        print("self.horosDays : \(self.horosDays)")

    }
}



