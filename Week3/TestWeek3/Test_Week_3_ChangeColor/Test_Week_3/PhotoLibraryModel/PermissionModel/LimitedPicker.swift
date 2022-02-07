//
//  LimitedPicker.swift
//  AccessCameraRoll
//
//  Created by Macbook16 on 20/1/2565 BE.
//

import SwiftUI
import PhotosUI // เพื่อใช้ presentLimitedLibraryPicker

struct LimitedPicker: UIViewControllerRepresentable {
    @Binding var isPresented: Bool

    func makeUIViewController(context: Context) -> UIViewController {
        let controller = UIViewController() // สร้างมา เพื่อใช้ใน line 19

        DispatchQueue.main.async {
            PHPhotoLibrary.requestAuthorization() { result in
                PHPhotoLibrary.shared().presentLimitedLibraryPicker(from: controller) // โชว์หน้าเลือกรูป เป็นหน้า default ของ iOS ไม่ต้องเขียนหน้าเลือกเอง
                context.coordinator.trackCompletion(in: controller)
            }
        }
        
        return controller
    }

    func updateUIViewController(_ uiViewController: UIViewController, context: Context) {
        
    }

    func makeCoordinator() -> Coordinator {
        Coordinator(isPresented: $isPresented)
    }
    
    class Coordinator: NSObject {
        private var isPresented: Binding<Bool>
        init(isPresented: Binding<Bool>) {
            self.isPresented = isPresented
        }

        func trackCompletion(in controller: UIViewController) {
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) { [weak self, weak controller] in
                if controller?.presentedViewController == nil {
                    self?.isPresented.wrappedValue = false
                } else if let controller = controller {
                    self?.trackCompletion(in: controller)
                }
            }
        }
    }
}
