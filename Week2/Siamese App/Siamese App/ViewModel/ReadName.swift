//
//  ReadName.swift
//  Siamese App
//
//  Created by Train2 on 14/1/2565 BE.
//

import Foundation

class ReadName: ObservableObject{
    
    @Published var Pub_Name = [Name]()
    @Published var loading = false //checkloading
    
    init(){
        loading = true //checkloading
        loadData()
    }
    
    func loadData(){
        loading = true
        let url = URL(string: "https://jsonkeeper.com/b/LCCQ")!
        
        URLSession.shared.dataTask(with: url) {(data, response, error) in
            //check error
            if let error_err = error{
                print(error_err.localizedDescription)
                return
            }
            if let nameData = data{
                let decodeData = try? JSONDecoder().decode([Name].self, from: nameData)
                DispatchQueue.main.async {
                    self.Pub_Name = decodeData!
                }
                print(self.Pub_Name)
            }
        }.resume()
    }
}

