//
//  ImagePickerView.swift
//  3rd week
//
//  Created by Train3 on 21/1/2565 BE.
//

import Foundation
import SwiftUI
import Photos

struct ImagePickerView: UIViewControllerRepresentable {
    @Binding var SelectedImg: UIImage?
    @Environment(\.presentationMode) var isPresented
    var sourceType: UIImagePickerController.SourceType
    
    func makeUIViewController(context: Context) -> UIImagePickerController {
        let ImagePicker = UIImagePickerController()
        
        ImagePicker.sourceType = self.sourceType
        ImagePicker.delegate = context.coordinator
        return ImagePicker
    }
    
    func updateUIViewController(_ uiViewController: UIImagePickerController, context: Context) {
        
    }
    
    func makeCoordinator() -> ImagePickerManager {
        return ImagePickerManager(recieved_picker: self)
    }
}
