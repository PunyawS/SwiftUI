//
//  ZodiacAPI.swift
//  LoadAPI_2
//
//  Created by Train2 on 12/1/2565 BE.
//

import Foundation

class ColorAPI: ObservableObject{
    
    @Published var selectChangeColor = [changeColorbg]()
    @Published var selectChangeText = [changeColortext]()
    
    init(){
        loadData()
    }
    
    func loadData(){
        
        let path = "https://jsonkeeper.com/b/3M1G"
        guard let url = URL.init(string: path) else {return}
        
        URLSession.shared.dataTask(with: URLRequest.init(url: url)) {
            data, _ ,err in
            
            if let err_temp = err {
                print(err_temp.localizedDescription)
                return
            }
            
            guard let dataResponse = data else {return}
            
            let textColorRespone_default = try? JSONDecoder().decode(textColorRespone.self, from: dataResponse)
            
            DispatchQueue.main.async {
                if let textColorRespone = textColorRespone_default{
//                    if textColorRespone != nil {
//                    if let datarow = textColorRespone.color_text {
                    self.selectChangeColor = textColorRespone.color_bg
                    self.selectChangeText = textColorRespone.color_text
//                        print("self.zodiac = \(self.selectChangeColor)")
//                    }
//                    }
                }
            }
            

        }.resume()
    }
}
