//
//  ConvertAPI.swift
//  Week2_Test_ATK
//
//  Created by Train2 on 14/1/2565 BE.
//

import Foundation

class ConvertAPI: ObservableObject{
    
    @Published var Con_API = [ATK]()
    
    init(){
        loadData()
    }
    
    func loadData(){
        let path = "https://jsonkeeper.com/b/UAB1"
        guard let url = URL.init(string: path) else {return}
        
        URLSession.shared.dataTask(with: URLRequest.init(url: url)) {
            data, _ ,err in
            //Check Error load
            if let err_temp = err {
                print(err_temp.localizedDescription)
                return
            }
            
            //Check Call data
            guard let dataResponse = data else {return}
            
            let ATKResponse_default = try? JSONDecoder().decode(ATKResponse.self, from: dataResponse)
            
            DispatchQueue.main.async {
                if let ATKResponse = ATKResponse_default{
                    
                    //check state True == true
                    if ATKResponse.Status.lowercased() == "true" {
                        
                        //if state == true, make Con_API = datarow
                        if let datarow = ATKResponse.Datarow {
                            self.Con_API = datarow
                            
                            //Add ID ATK in Model
                            for i in 0..<datarow.count {
                                self.Con_API[i].id = UUID()
                            }
                            
                            print("self.ATK = \(self.Con_API)")
                        }
                        
                    }
                }
            }
        }.resume()
    }
}

