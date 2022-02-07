//
//  ReadSiamese.swift
//  Siamese App
//
//  Created by Train2 on 14/1/2565 BE.
//

import Foundation

class ReadSiamese: ObservableObject{
    
    @Published var Pub_Siamese = [Siamese]()
    @Published var loading = false //checkloading
    
    init(){
        loading = true //checkloading
        loadData()
    }
    
    func loadData(){
        loading = true
        let url = URL(string: "https://jsonkeeper.com/b/2PU9")!
        
        URLSession.shared.dataTask(with: url) {(data, response, error) in
            //check error
            if let error_err = error{
                print(error_err.localizedDescription)
                return
            }
            if let SiameseData = data{
                let decodeData = try? JSONDecoder().decode([Siamese].self, from: SiameseData)
                DispatchQueue.main.async {
                    self.Pub_Siamese = decodeData!
                }
                print(self.Pub_Siamese)
            }
        }.resume()
    }
}

