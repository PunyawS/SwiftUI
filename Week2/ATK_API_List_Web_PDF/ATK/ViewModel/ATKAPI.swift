//
//  ViewModel.swift
//  ATK
//
//  Created by Train2 on 13/1/2565 BE.
//

import Foundation

class ReadATKAPI: ObservableObject{
    
    @Published var Pub_ATK = [ATK]()
//    @Published var loading = false //checkloading
    
    init(){
//        loading = true //checkloading
        loadData()
    }
    
    func loadData(){
//        loading = true
        let url = URL(string: "https://jsonkeeper.com/b/3RVV")!
        
        URLSession.shared.dataTask(with: url) {(data, response, error) in
            //check error
            if let error_err = error{
                print(error_err.localizedDescription)
                return
            }
            if let atkData = data{
                let decodeData = try? JSONDecoder().decode([ATK].self, from: atkData)
                DispatchQueue.main.async {
                    self.Pub_ATK = decodeData!
                }
                print(self.Pub_ATK)
            }
        }.resume()
    }
}
