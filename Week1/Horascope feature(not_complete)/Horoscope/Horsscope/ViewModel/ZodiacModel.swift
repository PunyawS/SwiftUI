//
//  ZodiacModel.swift
//  Horsscope
//
//  Created by Train2 on 7/1/2565 BE.
//

import Foundation

class ZodiacModel: ObservableObject {
    //ในส่วนของฝั่ง ViewModel จะใส่ protocol ที่ชื่อว่า ObservableObject ไว้้ใน Class ของ ViewModel เพื่อให้ ViewModel ทำตัวเป็น Observable
    
    //ส่งไปบอก View ว่า Data มาแล้ว ต้องประกาศ @Published หน้า Variable ที่เป็น Model ของ Data ใน List ที่เรานจะนำไปแสดงใน View
    
    @Published var zodiacs = [Zodiac]()
    
    init(){
        loadData()
    }
    
    func loadData() {
        //ใช้คำสั่ง guard และคำสั่ง if let เพื่อตรวจสอบว่า ไฟล์ zodiac horoscope.json มีอยู่หรือไม่
        guard let url = Bundle.main.url(forResource: "zodiac horoscope", withExtension: "json")
        else{
            print("Json not found")
            return
        }
        
        let data = try? Data(contentsOf: url)
        let zodiacs = try? JSONDecoder().decode([Zodiac].self, from: data!)
        self.zodiacs = zodiacs!
    }
}
