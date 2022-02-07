//
//  DetailView.swift
//  SwiftUI NavigationLink
//
//  Created by Train2 on 4/1/2565 BE.
//

import SwiftUI

class MenuModel: ObservableObject{
    @Published var menu_no = 0
}

struct DetailView: View {
    @EnvironmentObject var menu: MenuModel
    
    var body: some View {
        Text("Menu: \(menu.menu_no)")
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView()
    }
}
