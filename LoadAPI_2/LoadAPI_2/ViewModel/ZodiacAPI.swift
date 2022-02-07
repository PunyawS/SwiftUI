//
//  ZodiacAPI.swift
//  LoadAPI_2
//
//  Created by Train2 on 12/1/2565 BE.
//

import Foundation

class ZodiacAPI: ObservableObject{
    
    @Published var zodiac = [Zodiac]()
    
    init(){
        loadData()
    }
    
    func loadData(){
        
        let path = "https://starvision.in.th/trainiosdev/apifile02.json"
        guard let url = URL.init(string: path) else {return}
        
        URLSession.shared.dataTask(with: URLRequest.init(url: url)) {
            data, _ ,err in
            
            if let err_temp = err {
                print(err_temp.localizedDescription)
                return
            }
            
            guard let dataResponse = data else {return}
            
            let zodiacResponse_default = try? JSONDecoder().decode(ZodiacResponse.self, from: dataResponse)
            
            DispatchQueue.main.async {
                if let zodiacResponse = zodiacResponse_default{
                    if zodiacResponse.Status.lowercased() == "true" {
                        
                        if let datarow = zodiacResponse.Datarow {
                            self.zodiac = datarow
                            for i in 0..<datarow.count {
//                                self.zodiac[i].id = "\(UUID())" String
                                self.zodiac[i].id = UUID()
                            }
                            
                            print("self.zodiac = \(self.zodiac)")
                        }
                        
                    }
                }
            }

        }.resume()
    }
}
