//
//  RandomSiamese.swift
//  Siamese App
//
//  Created by Train2 on 17/1/2565 BE.
//

import SwiftUI
import URLImage


struct siameseDetailView: View {
    
    var siamese_lower: Name
    
    //Random Siamese
    @ObservedObject var SiameseData = ReadSiamese()
    @State var rand = Int.random(in: 0...17)
    
    //toggle switch
    @State private var toggle_switch = false
    
    var body: some View {
        ZStack {
            Color.red
                .ignoresSafeArea(.all)
            
            VStack(spacing:20) {
                
                //image
                URLImage(url: URL(string: siamese_lower.image)!)
                { image in image
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 250, height: 250).cornerRadius(20)
                            
                }.border(.yellow, width:5).cornerRadius(15)

                //Detail
                ZStack {
                    Rectangle()
                        .foregroundColor(Color.yellow)
                        .cornerRadius(20)
                        .shadow(radius: 10)
                        .frame(height: 75)
                    
                    VStack {
                        Text(siamese_lower.Detail)
                            .font(Font.system(size: 16))
                    }
                }
                
                //Random func
                VStack{
                    Button(action: {
                        rand = Int.random(in: 0...17)
//                        self.toggle_switch = true
                        self.toggle_switch.toggle()
                    }
                           ,label: {
                        Text("เสี่ยงเซียมซี")
                            .bold()
                            .font(Font.system(size: 20))
                            .padding()
                            .frame(width: 150, height: 75)
                            .foregroundColor(.red)
                    })
                    
                    if toggle_switch == true {
                        Predict(stick_Siamese: SiameseData.Pub_Siamese[rand])
                    }
                }
                //background button
                .background(Color.yellow)
                    .cornerRadius(10)
                Spacer()
            }
            .ignoresSafeArea()
            .padding(.all)
        }
    }
}


struct siameseDetailView_Previews: PreviewProvider {
    static var previews: some View {
        let model = ReadName()
        siameseDetailView(siamese_lower: model.Pub_Name[0])
    }
}
