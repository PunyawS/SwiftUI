//
//  ContentView.swift
//  SwiftUI Recipe
//
//  Created by Train2 on 6/1/2565 BE.
//

import SwiftUI

struct ContentView: View {
    
    //Binding ผูก View กับ View Model ด้วยการประกาศ @ObservedObject
    @ObservedObject var model = RecipeModel()
    
    var body: some View {
        VStack {
            List(model.recipes) { recipes in
                
                VStack(alignment: .leading) {
                    Text(recipes.name)
                        .font(.title)
                    Text(recipes.cuisine)
                }
            }
            Button("Add Recipe") {
                model.addRecipe()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
