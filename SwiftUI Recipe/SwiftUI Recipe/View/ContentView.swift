//
//  ContentView.swift
//  SwiftUI Recipe
//
//  Created by Train2 on 6/1/2565 BE.
//

import SwiftUI

struct ContentView: View {
    var model = RecipeModel()
    
    var body: some View {
       
        List(model.recipes) { recipe in
            
            VStack(alignment: .leading) {
                Text(recipe.name)
                    .font(.title)
                Text(recipe.cuisine)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
