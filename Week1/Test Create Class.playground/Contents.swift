import UIKit

//Define Class
class Dog{
    func makeNoise(){
        print("Woof !")
    }
}

//Subclass
class Poodle: Dog{
    override func makeNoise() {
        print("Yap !")
    }
}

let poppy = Poodle()
poppy.makeNoise()
