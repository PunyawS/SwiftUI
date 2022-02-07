//
//  EditView.swift
//  3rd week
//
//  Created by Train3 on 21/1/2565 BE.
//

import Foundation
import SwiftUI

struct EditView: View {
    
    @State var EditUser: String = ""
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        
        VStack(alignment: .center, spacing: 30) {
            Text("Enter your name")
            TextField("Enter your name", text: $EditUser)
                .frame(width: 250)
                .textFieldStyle(.roundedBorder)
            
            Button(action: {
                UserDefaults.standard.set(EditUser, forKey: usdf_keys.user_data)
                UserDefaults.standard.synchronize()
                
                UserDefaults.standard.set(getDate(), forKey: usdf_keys.date_update)
                UserDefaults.standard.synchronize()
                
                UserDefaults.standard.set(getTime(), forKey: usdf_keys.time_update)
                UserDefaults.standard.synchronize()
                
                self.presentationMode.wrappedValue.dismiss()
            }, label: {
                Text("OK")
            })
                .buttonStyle(BorderedButtonStyle())
        }
            
        
    }
}

struct EditView_Previews: PreviewProvider {
    static var previews: some View {
        EditView()
    }
}
