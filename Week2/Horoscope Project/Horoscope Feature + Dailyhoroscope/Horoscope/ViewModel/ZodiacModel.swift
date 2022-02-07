//
//  ZodiacModel.swift
//  Horoscope
//
//  Created by Train3 on 7/1/2565 BE.
//

import Foundation

class ZodiacModel: ObservableObject {
    
    @Published var zodiacs = [Zodiac]()
    
    init(){
        loadData()
    }
    
    func loadData() {
        guard let url = Bundle.main.url(forResource: "zodiac horoscope", withExtension: "json")
        else {
            print("not found")
            return
        }
        
        let data = try? Data(contentsOf: url)
        let zodiacs = try? JSONDecoder().decode([Zodiac].self, from: data!)
        self.zodiacs = zodiacs!
    }
}
