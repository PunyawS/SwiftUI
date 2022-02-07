//
//  ImagePickerManager.swift
//  3rd week
//
//  Created by Train3 on 21/1/2565 BE.
//

import Foundation
import UIKit

class ImagePickerManager: NSObject, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    var picker: ImagePickerView
    
    init(recieved_picker: ImagePickerView) {
        self.picker = recieved_picker
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        guard let SelectedImage = info[.originalImage] as? UIImage else { return }
        
        self.picker.SelectedImg = SelectedImage
        self.picker.isPresented.wrappedValue.dismiss()
    }
}
