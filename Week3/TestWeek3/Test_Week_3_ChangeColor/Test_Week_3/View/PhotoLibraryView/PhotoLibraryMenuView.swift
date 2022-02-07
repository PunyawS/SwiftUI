//
//  Other_Menu.swift
//  Test_Week_3
//
//  Created by Train2 on 21/1/2565 BE.
//

import SwiftUI

struct PhotoLibraryMenuView: View {
    
    @Environment(\.presentationMode) private var presentationMode // ใช้ตอนสั่งปิด
    
    //Create variable sourceType and give value is .photoLibrary
    // .photoLibrary is manages access and changes to the user’s photo library. (พูดง่าย ๆ คือเข้าถึงคลังภาพของ User)
    @State private var sourceType: UIImagePickerController.SourceType = .photoLibrary
    
    //Create variable selectImage is UIImage
    @State private var selectImage1: UIImage?
    
    //Create variable PickerDisplay and give value false
    //PickerDisplay use from .toggle in Button action
    @State private var PickerDisplay = false
    
    @State private var isImagePickerDisplay = false
    @State private var isImagePickerLimitedDisplay = false
    @State private var isImagePickerLimitedDisplay_disable = false
    @State private var photoPermission: PhotoPermission = PhotoPermission.init()
    
    var body: some View {
        ZStack{
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
                            Image(uiImage: UIImage(named: "default-avatar")!)
                                .resizable()
                                .scaledToFill()
                                .frame(width: 150, height: 150)
                                .clipShape(Circle())
                                .padding()
                        }
                        Button("Photo") {
//                            if photoPermission.authorized {
//                                self.sourceType = .photoLibrary
//                                if photoPermission.limited {
//                                    if !isImagePickerLimitedDisplay_disable {
//                                        isImagePickerLimitedDisplay_disable = true
//                                        isImagePickerLimitedDisplay.toggle()
//                                    }else{
//                                        // เปิดหน้า limit รูปที่เคยเลือกไว้ ต้อง custom code เองต่อ
//                                    }
//                                }else{
//                                    isImagePickerDisplay.toggle()
//                                }
//                            }else{
//                                if photoPermission.denied {
//                                    // ต้องโชว์ alert แจ้งเตือนให้ไปเปิดตั้งค่าเข้าถึงอัลบั้ม
//                                }else{
                                    showPermission()
//                                }
//                            }
                        }.padding()
                    }
//                        Button("Photo") {
//                            //use variable sourceType
//                            self.sourceType = .photoLibrary
//                            //use variable PickerDisplay
//                            self.PickerDisplay.toggle()
//                        }.padding()
//                            .frame(maxWidth: 150)
//                            .foregroundColor(.white)
//                            .background(Color.blue)
//                            .cornerRadius(20)
//                    }
//                    .navigationBarTitle("Select Profile Picture")
                    
                    //opensheet when Tab "Photo"
                    //show sheet when variable $isImagePickerDisplay is True
                    //when sheet open, then show Page:ImagePickerView
                    //get value in selectedImage and sourceType (ภาพที่เลือกมา และ สิ่งที่ต้องการเข้าถึง เช่นคลังภาพ หรือกล้อง เป็นต้น)
//                    .sheet(isPresented: self.$PickerDisplay) {
//                        ImagePickerView(selectimageProfile: self.$selectImage1, sourceType: self.sourceType)
//                }
                    .navigationBarItems(leading: backstep)
                    .navigationBarTitle("Permission")
                    .sheet(isPresented: self.$isImagePickerDisplay) {
                        ImagePickerView(selectimageProfile: self.$selectImage1, sourceType: self.sourceType)
                    }
                    .sheet(isPresented: self.$isImagePickerLimitedDisplay) {
                        LimitedPicker.init(isPresented: self.$isImagePickerLimitedDisplay)
                    }
            }
        }
    }
    var backstep : some View{
        Button {
            presentationMode.wrappedValue.dismiss() // สั่ง dismiss() คือปิด
        } label: {
            Text("Back")
                .padding()
                .frame(maxWidth: 150)
                .foregroundColor(.blue)
                .cornerRadius(20)
        }
    }
    func showPermission() {
        photoPermission.showPermission()
    }
}

struct Other_Menu_Previews: PreviewProvider {
    static var previews: some View {
        PhotoLibraryMenuView()
    }
}
