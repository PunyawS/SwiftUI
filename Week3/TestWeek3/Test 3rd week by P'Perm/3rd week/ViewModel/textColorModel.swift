//
//  textColorModel.swift
//  3rd week
//
//  Created by Train3 on 21/1/2565 BE.
//

import Foundation

class textColorModel: ObservableObject {
    @Published var textColors = [SubColor]()
    
    init() {
        loadData(path: "https://jsonkeeper.com/b/3M1G")
    }
    
    func loadData(path: String) {
        guard let url = URL(string: path) else { return }
        
        URLSession.shared.dataTask(with: URLRequest(url: url)) { data, response, error in
            if let err_check = error {
                print(err_check.localizedDescription)
                return
            }
            
            guard let ColorData = data else { return }
            
            let DecodedColorData_default = try? JSONDecoder().decode(Color1.self, from: ColorData)
            
            //DispatchQueue.main.async {
                if let DecodedColorData = DecodedColorData_default {
                    self.textColors = DecodedColorData.color_text
                }
            //}
            print((self.textColors))
        }.resume()
    }
}
