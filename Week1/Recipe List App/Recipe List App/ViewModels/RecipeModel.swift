//
//  RecipeModel.swift
//  Recipe List App
//
//  Created by Train2 on 6/1/2565 BE.
//

import Foundation

class RecipeModel: ObservableObject{
    
    @Published var recipes = [Recipe]()
    
    init(){
        
        //Create an instance of data service and get the data
        self.recipes = DataService.getLocalData()
        
    }
}
