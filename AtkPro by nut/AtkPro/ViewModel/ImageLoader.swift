//
//  ImageLoader.swift
//  LoadApi2
//
//  Created by Train1 on 12/1/2565 BE.
//

import Foundation
class ImageLoader: ObservableObject{
    @Published var data_img = Data()
    
    func loadImage(path:String){
        guard let url = URL(string:path) else { return }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data else { return }
            DispatchQueue.main.async {
                self.data_img = data
            }
        }.resume()
    }
}

