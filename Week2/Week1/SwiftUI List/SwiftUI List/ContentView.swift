//
//  ContentView.swift
//  SwiftUI List
//
//  Created by Train2 on 4/1/2565 BE.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
//        แบบ 1
//        List {
//            Text("Dog")
//            Text("Dog")
//            Text("Dog")
//        }
//    }
//}
        
//        แบบ 2
        let animals = ["Dog","Cat","Bird"]
        List(animals,id: \.self) {
            animal in Text(animal)
        }
    }
}

//แบบ 3
//struct ContentView: View{
//    struct Animal: Identifiable{
//        let name:String
//        let id: Int
//    }
//    let animals = [
//        Animal(name: "Dogggg", id:1),
//        Animal(name: "Cat", id:2),
//        Animal(name: "Bird", id:3)
//    ]
//
//    var body:some View{
//        List(animals) {animal in
//            HStack{
//                Text(animal.name)
//                Text("\(animal.id)")
//            }
//        }
//        .listStyle(GroupedListStyle()) //.listStyle(เปลี่ยนการแสดงผลได้())
//    }
//}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
