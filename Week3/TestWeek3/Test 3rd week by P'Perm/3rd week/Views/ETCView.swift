//
//  ETCView.swift
//  3rd week
//
//  Created by Train3 on 21/1/2565 BE.
//

import Foundation
import SwiftUI

struct ETCView: View {
    
    @State var showImg: UIImage?
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        NavigationView {
            VStack {
                List {
                    NavigationLink(destination: MapView(), label: {
                        Text("Alert Permission Map")
                    })
                    NavigationLink(destination: ImagePickerView(SelectedImg: $showImg,sourceType: .photoLibrary), label: {
                        Text("Camera roll")
                    })
                }
                
                if showImg == nil {
                    Text("No Picture")
                } else {
                    Image(uiImage: showImg!)
                        .resizable()
                        .frame(width: 200, height: 200, alignment: .center)
                        .scaledToFill()
                        .clipped()
                }
            }
            
        }
    }
}

struct ETCView_Previews: PreviewProvider {
    static var previews: some View {
        ETCView()
    }
}
