import UIKit

class Vehical{
    func makeNoise() {
        print("Do nothing")
    }
}

class Train: Vehical{
    override func makeNoise() {
        print("Choo Choo")
    }
}

var train = Train.self()
train.makeNoise()
