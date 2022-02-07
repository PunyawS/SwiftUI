//
//  RecipeModel.swift
//  SwiftUI Recipe
//
//  Created by Train2 on 6/1/2565 BE.
//

import Foundation

class RecipeModel: ObservableObject{
    
    //ในส่วนของฝั่ง  Viewmodel จะใส่ protocol ที่ชื่อว่า ObservableObject ไว้ใน Class ของ Viewmodel เพื่อให้ ViewModel ทำตัวเป็น Observable
    
    //ส่งไปบอก View ว่า Data มาแล้ว ต้องประกาศ @Published หน้าตัวแปรที่เป็น Model ของ Data ใน List ที่เราจะนำไปแสดงใน View
    @Published var recipes = [Recipe]() // Create Empty Array
    
    init() {
        //Create some dummy recipe data
        recipes.append(Recipe(name: "Spaghetti", cuisine: "Italian"))
        recipes.append(Recipe(name: "Sushi", cuisine: "Japanese"))
    }
    func addRecipe(){
        recipes.append(Recipe(name: "Burger", cuisine: "America"))
    }
}
