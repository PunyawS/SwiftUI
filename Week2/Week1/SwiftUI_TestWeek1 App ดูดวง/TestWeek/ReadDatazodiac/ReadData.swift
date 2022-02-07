//
//  ReadData.swift
//  TestWeek
//
//  Created by Train2 on 7/1/2565 BE.
//

import Foundation

class ReadData: ObservableObject {
    //ในส่วนของฝั่ง ViewModel จะใส่ protocol ที่ชื่อว่า ObservableObject ไว้ใน Class ของ ViewModel เพื่อให้ Viewmodel ทำตัวเป็ฯ Observable
    //ส่งไปบอก View ว่า Data มาแล้ว ต้องทำการประกาศ @Published หน้า Variable ที่เป็น Model ของ Data ใน List ที่เราจะนำไปแสดงใน View
    
    @Published var zodiacs = [Zodiac]() //() ประกาศตัวแปรนี้ว่า ผodiacs ต้องมีค่าเท่านั้น เป็นค่าว่างไม่ได้
    
    init(){
        loadData()
    }
    
    func loadData(){
        //ใช้คำสั่ง guard และคำสั่ง if let เพื่อตรวจสอบว่า ไฟล์ zodiac.json มีอยู่หรือไม่
        guard let url = Bundle.main.url(forResource: "zodiac horoscope", withExtension: "json")
        else{
            print("Json file not found")
            return
        }
        let data = try? Data(contentsOf: url)
        let zodiacs = try? JSONDecoder().decode([Zodiac].self, from: data!) // try? ทำให้ let zodiacs มีโอกาสเป็นค่าว่าง
        self.zodiacs = zodiacs! //ใส่ ! เพื่อ unwrap ค่าว่าไม่เป็น nil บ่งบอกว่าตัวแปร zodiacs มีค่า
    }
}

