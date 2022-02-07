//
//  Predict.swift
//  Siamese App
//
//  Created by Train2 on 17/1/2565 BE.
//

import Foundation
import SwiftUI

struct Predict: View {
    
    var stick_Siamese: Siamese
    
    var body: some View {
        VStack{
            Text(stick_Siamese.title)
            Text(stick_Siamese.discription)
        }.padding(.bottom)
    }
}

struct PredictView_Previews: PreviewProvider {
    static var previews: some View {
        Predict(stick_Siamese: ReadSiamese().Pub_Siamese[0])
    }
}
