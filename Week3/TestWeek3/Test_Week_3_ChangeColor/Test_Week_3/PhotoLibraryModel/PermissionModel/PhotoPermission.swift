//
//  PhotoPermission.swift
//  AccessCameraRoll
//
//  Created by Macbook16 on 20/1/2565 BE.
//

import Foundation
import Photos

class PhotoPermission: ObservableObject {
    @Published var authorized:Bool = false
    @Published var limited:Bool = false
    @Published var denied:Bool = false
    
    init() {
        
    }
    
    func showPermission() {
        PHPhotoLibrary.requestAuthorization(for: .readWrite) { (status) in
            switch status {
            case .notDetermined:
            // ask for access
                break
            case .restricted, .denied: // แอพไม่อนุญาต, user กดไม่อนุญาต
            // sorry
                self.denied = true
                break
            case .authorized: // เข้าถึงทั้งหมด
            // we have full access
                self.authorized = true
                break
            case .limited: // เข้าถึงได้แค่รูปที่กำหนด
            // we only got access to a part of the library
                self.authorized = true
                self.limited = true
                break
            @unknown default:
                break
            }
        }
    }
}
