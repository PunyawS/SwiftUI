//
//  TextFieldView.swift
//  Tab_snow
//
//  Created by Train2 on 18/1/2565 BE.
//

import SwiftUI

struct TextFieldView: View {
    
    @Environment(\.presentationMode) private var presentationMode // ใช้ตอนสั่งปิด
    
    @State var skyBlue = Color(red: 0.4627, green: 0.8392, blue: 1.0)
    
    var body: some View {
        
        ZStack {
            skyBlue
                .ignoresSafeArea()
            
            VStack{

                TextField("Type your name", text: $textInput)
                    .padding()
                    .background(Color.gray.opacity(0.3).cornerRadius(10))
                    .foregroundColor(.red)

                HStack {
                    //Save
                    Button(action: {
                        saveText()
                        
                        NotificationCenter.default.post(name: Notification.editName, object: dataArray)
                        
                    }, label: {
                        Text("Save")
                            .padding()
                            .frame(maxWidth: 150)
                            .foregroundColor(.white)
                            .background(Color.green)
                            .cornerRadius(20)

                    })
                    Button {
                        presentationMode.wrappedValue.dismiss() // สั่ง dismiss() คือปิด
                    } label: {
                        Text("Close")
                            .padding()
                            .frame(maxWidth: 150)
                            .foregroundColor(.white)
                            .background(Color.red)
                            .cornerRadius(20)
                    }
                }.padding()
                //List text
                List{
                    HStack {
                        Text(dataArray)
                        Spacer()
                        Text("".getCurrentTime())
                    }
                }
                .toolbar {EditButton()}
                .cornerRadius(20)
                .onAppear{
                    dataArray = TextFieldView.getDataArray()
                }
            }.padding()
        }
    }
    
    //datainput
    @State var textInput = ""
    @State var dataArray : String = ""
    
    static func getDataArray() -> String {
        var arr:String = ""
        if let arr_old = UserDefaults.standard.object(forKey: USDF_Keys.username_list) {
            arr = arr_old as! String
        }
        print("getLogin arr :: \(arr)")
    return arr
    }
    
    func saveText(){
        //connect aaa to Userdefaults -> username_list and then save value of aaa in dataArray
        if let aaa = UserDefaults.standard.object(forKey: USDF_Keys.username_list){
            //now dataArray connect with USDF_Keys.username_list
            dataArray = aaa as! String
        }
        
        //add array to list -> When add new text show first
        dataArray=textInput
        
        //check add Text in dataArray
        print(dataArray)
       
        //check dataArray > 0, save text to dataArray to userdefault then addArray
        if dataArray.count > 0{
            UserDefaults.standard.set(dataArray, forKey: USDF_Keys.username_list)
            UserDefaults.standard.synchronize()
        }
        textInput = ""
    }
    
    //remove dataArray
    func removeTextFromUserdefault() {
        UserDefaults.standard.removeObject(forKey: USDF_Keys.username_list) // ลบ ด้วยคีย์
        UserDefaults.standard.synchronize()
        //Check remove Text of dataArray
        print(dataArray)
    }
}

//Today Date
extension String{

func getCurrentTime()->String{
    let today = Date()
    let formatter = DateFormatter()
    formatter.timeStyle = .short
    formatter.dateStyle = .long
    formatter.locale = Locale.init(identifier: "th_TH")
    let TextDate = formatter.string(from: today)
    return TextDate
    }
}

struct TextFieldView_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldView()
    }
}
