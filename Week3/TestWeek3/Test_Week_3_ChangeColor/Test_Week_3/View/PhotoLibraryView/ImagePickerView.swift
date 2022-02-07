//
//  ImagePickerView.swift
//  AccessCameraRoll
//
//  Created by Macbook16 on 17/1/2565 BE.
//

import UIKit
import SwiftUI

struct ImagePickerView: UIViewControllerRepresentable {
    
    @Binding var selectimageProfile: UIImage?
    
    // A binding to the current presentation mode of the view associated
    @Environment(\.presentationMode) var isPresented
    
    //Create variable sourceType to use UIKit Framework
    //Default value is UIImagePickerControllerSourceTypePhotoLibrary.
    var sourceType: UIImagePickerController.SourceType
        
    //
    func makeUIViewController(context: Context) -> UIImagePickerController {
        
        //Create Variable imagePicker and assign value is UIImagePickerController()
        //UIImagePickerController() in UIKit Framework
        //UIImagePickerController() is func to Pick photo
        let imagePicker = UIImagePickerController()
        
        //make imagePicker.PhotoLibrary
        imagePicker.sourceType = self.sourceType
        imagePicker.allowsEditing = false // อนุญาตให้ crop รูป
        
        //make imagePicker is coordinator and then delegate it
        imagePicker.delegate = context.coordinator // context.coordinator คือระบุตำแหน่งปลายทางที่จะรับ delegate
        
        //send imagePicker to protocol delegate wait to use
        return imagePicker
    }

    func updateUIViewController(_ uiViewController: UIImagePickerController, context: Context) {

    }
    //func Coordimnator to return ImagePickerManager(picker: self)
    //see code in ImagePickerManager
    func makeCoordinator() -> ImagePickerManager { // สร้าง coordinator
        return ImagePickerManager(picker: self)
        
//        let imgPicker = ImagePickerManager()
//        imgPicker.picker = self
//        return imgPicker
    }
}
