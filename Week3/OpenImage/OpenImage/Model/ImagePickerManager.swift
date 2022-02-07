//
//  ImagePickerManager.swift
//  AccessCameraRoll
//
//  Created by Macbook16 on 17/1/2565 BE.
//

import UIKit
import Foundation
import Photos // framework default ของ iOS เพื่อเข้าถึงรูป

class ImagePickerManager: NSObject, UINavigationControllerDelegate, UIImagePickerControllerDelegate {
    
    //Create picker is ImagePickerView
    var picker: ImagePickerView
    
    // self.picker = picker <- เลือกภาพอะไรมาก็ให้เป็นภาพนั้น
    init(picker: ImagePickerView) {
        self.picker = picker
    }

    // เป็นฟังก์ชันของ UIImagePickerControllerDelegate
    // ใช้ ค่าใน Delegate ที่ส่งมาจากหน้า ImagePickerView
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
//        // originalImage ใช้รูปต้นฉบับ
        guard let imageProfile = info[.originalImage] as? UIImage else { return }
        
        // editedImage ใช้รูปที่ crop
        //take value into variable imageProfile
//        guard let imageProfile = info[.editedImage] as? UIImage else { return }
        
        //Use Image by User select
        self.picker.selectimageProfile = imageProfile
        //Close sheet PhotoLibrary.
        self.picker.isPresented.wrappedValue.dismiss()
    }
}
