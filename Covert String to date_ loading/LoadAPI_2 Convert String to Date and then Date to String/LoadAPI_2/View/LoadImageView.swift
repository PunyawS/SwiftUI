//
//  LoadImageView.swift
//  LoadAPI_2
//
//  Created by Train2 on 12/1/2565 BE.
//

import Foundation
import SwiftUI

struct LoadInageView: View{
    @ObservedObject var imageLoader = ImageLoader()
    @State var img:UIImage = UIImage()
    
    var paht_load: String
    
    var body: some View{
        Image(uiImage: img)
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 90, height: 90)
            .clipped()
        //onappear คือ slide ลงไปถึงแล้วค่อยสั่ง load ภาพ
        //load image on paht_load
            .onAppear {
                imageLoader.loadImage(with: paht_load)
            }
        //convert dt to image to show image
            .onReceive(imageLoader.$data_img){
                dt in self.img = UIImage.init(data: dt) ?? UIImage()
                //โหลดรูปเข้ามาจาก paht_load จากนั้นนำมาใช้
            }
    }
}
