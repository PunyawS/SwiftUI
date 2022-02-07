//
//  ContentView.swift
//  OpenImage
//
//  Created by Train2 on 20/1/2565 BE.
//

import SwiftUI

struct ContentView: View {
    
    //Create variable sourceType and give value is .photoLibrary
    // .photoLibrary is manages access and changes to the user’s photo library. (พูดง่าย ๆ คือเข้าถึงคลังภาพของ User)
    @State private var sourceType: UIImagePickerController.SourceType = .photoLibrary
    
    //Create variable selectImage is UIImage
    @State private var selectImage1: UIImage?
    
    //Create variable PickerDisplay and give value false
    //PickerDisplay use from .toggle in Button action
    @State private var PickerDisplay = false
    
    var body: some View {
        NavigationView{
            VStack {
                //check variable selectedImage is't Null
                if selectImage1 != nil {
                    Image(uiImage: selectImage1!)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .clipShape(Circle())
                        .frame(width: 300, height: 300)
                }
                // else variable selectedImage is Null
                else {
                    Image(systemName: "snow")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .clipShape(Circle())
                        .frame(width: 300, height: 300)
                }
                
                Button("Photo") {
                    //use variable sourceType
                    self.sourceType = .photoLibrary
                    //use variable PickerDisplay
                    self.PickerDisplay.toggle()
                }.padding()
                    .frame(maxWidth: 150)
                    .foregroundColor(.white)
                    .background(Color.blue)
                    .cornerRadius(20)
                /*
                Button("Camera") {
                    self.sourceType = .camera
                    self.isImagePickerDisplay.toggle()
                }.padding()
                */
            }
            .navigationBarTitle("Basic")
            
            //opensheet when Tab "Photo"
            //show sheet when variable $isImagePickerDisplay is True
            //when sheet open, then show Page:ImagePickerView
            //get value in selectedImage and sourceType (ภาพที่เลือกมา และ สิ่งที่ต้องการเข้าถึง เช่นคลังภาพ หรือกล้อง เป็นต้น)
            .sheet(isPresented: self.$PickerDisplay) {
                ImagePickerView(selectimageProfile: self.$selectImage1, sourceType: self.sourceType)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
