//
//  ZodiacManager.swift
//  LoadAPI1
//
//  Created by Macbook16 on 12/1/2565 BE.
//

import Foundation

class ZodiacManager: ObservableObject {
    
    @Published var zodiac = [Zodiac]()
    
    init() {
        loadData()
    }
    func loadData() {
        
        //GET คือเปิดใน browser ได้
        //POST คือต้องส่ง parameter ไปด้วย ใช้เมื่อเมื่อข้อมูลที่ต้องการส่งมีจำนวนมาก หรือเป็นข้อมูลที่สำคัญและต้องการปกปิด
        
        let path = "https://starvision.in.th/trainiosdev/apifile01.json"
        guard let url = URL.init(string: path) else {return}
        
        URLSession.shared.dataTask(with: URLRequest.init(url: url)) { data, _, err in
            
            if let err_tmp = err {
                print(err_tmp.localizedDescription)
                return
            }
           
            guard let dataResoponse = data else {return}
            
            /*
             //JSON แนะนำเขียนแบบนี้้
            let zodiacResponse = try! JSONDecoder().decode(ZodiacResponse.self, from: dataResoponse)
            if zodiacResponse.Status.lowercased() == "true" {
                //self.zodiac = zodiacResponse.Datarow ?? [] //เขียนแบบย่อ ดึงค่า Datarow มาใช้ ถ้าไม่มีค่ากำหนดให้เป็น [] ว่าง
                if let datarow = zodiacResponse.Datarow {
                    self.zodiac = datarow //ถ้ามีค่า ก็บังคับให้ใช้ค่านั้นเลย
                }
            }
            */
          //API แนะนำเขียนแบบนี้
            let zodiacResponse_default = try? JSONDecoder().decode(ZodiacResponse.self, from: dataResoponse)
            //patchQueue ใช้เวลาต้องโหลดข้อมูลไปใช้ก่อน
            DispatchQueue.main.async {
                if let zodiacResponse = zodiacResponse_default {
                    if zodiacResponse.Status.lowercased() == "true" {
//                        self.zodiac = zodiacResponse.Datarow?? [] //เขียนแบบย่อ ถ้าเขียนแบบเต็มให้ดู 50-51
                        if let datarow = zodiacResponse.Datarow {
                            self.zodiac = datarow
                            
                            print("self.zodiac : \(self.zodiac)")
                        }
                    }
                }
            }
        }.resume()
    }
}
    
    /*
    func loadData() {
        guard let url = URL(string: "https://starvision.in.th/trainiosdev/apifile01.json") else { return }
        URLSession.shared.dataTask(with: URLRequest.init(url: url)) { data, _, err in
            guard let dataReponse = data else { return }
//            let zodiacResponse = try! JSONDecoder().decode(ZodiacResponse.self, from: dataReponse)
            let zodiacResponse_default = try? JSONDecoder().decode(ZodiacResponse.self, from: dataReponse)
            DispatchQueue.main.async {
                if let zodiacResponse = zodiacResponse_default {
                    if zodiacResponse.Status.lowercased() == "true" {
//                        self.zodiac = zodiacResponse.Datarow ?? []
                        if let datarow = zodiacResponse.Datarow {
                            self.zodiac = datarow
                            print("self.zodiac : \(self.zodiac)")
                        }
                    }
                }
            }
        }.resume()
    }
}
     */
