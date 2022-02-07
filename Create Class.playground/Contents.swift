import UIKit

//Define Class
class Person{
    var name = ""
    func talk(){
        print("Go conversation")
    }
}

var a = Person()
a.name = "John"
print(a.name)

//Subclass
class Comedian: Person{
    override func talk(){
        print("Make me laugh")
        
        super.talk() //call main func
    }
    func run(){
        print("Run Run Run")
    }
}

var c = Comedian()
c.talk() //Go conversation
c.run()


//---Result---
//John
//Make me laugh
//Make conversation
//Run Run Run
