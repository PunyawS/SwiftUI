//
//  ZodiacManager.swift
//  LoadApi2
//
//  Created by Train1 on 12/1/2565 BE.
//

import Foundation
class AtkModel: ObservableObject{
    @Published var atk = [Atk]()
    
    
    init(){
       
        loadData()
    }
    
    func loadData() {
       
        let url = URL(string: "https://jsonkeeper.com/b/3RVV")!
        URLSession.shared.dataTask(with: url) {(data, response, error) in
            if let error_check = error {
                print(error_check.localizedDescription)
                return
            }
           if let atkData = data{
                let decodeData = try? JSONDecoder().decode([Atk].self, from: atkData)
                DispatchQueue.main.async {
                    self.atk = decodeData!
                }
                print(self.atk)
            }
        }.resume()
    }
}
