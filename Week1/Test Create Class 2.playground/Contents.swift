import UIKit

//var names = ["Same","Jane","Judy"]
//var classes = [Doctor.self,Teacher.self,Chef.self,Engineer.self]

class Person{
    var name = ""
    required init(){
        
    }
    func introduceMyself(){
        print("Hi !, my name is \(name)")
    }
}

class Doctor: Person{
    override func introduceMyself() {
        super.introduceMyself()
        print("I'm a Doctor")
    }
}

class Teacher: Person{
    override func introduceMyself() {
        super.introduceMyself()
        print("I'm a Teacher")
    }
}

class Chef: Person{
    override func introduceMyself() {
        super.introduceMyself()
        print("I'm a Chef")
    }
}

class Engineer: Person{
    override func introduceMyself() {
        super.introduceMyself()
        print("I'm an Engineer")
    }
}

var names = ["Same","Jane","Judy"]
var classes = [Doctor.self,Teacher.self,Chef.self,Engineer.self]

for n in (0...9) {
    let nameIndex = Int.random(in: 0..<names.count)
    let classIndex = Int.random(in: 0..<classes.count) // random class
    let people = classes[classIndex].init()
//    let people = Doctor()
    people.name = names[nameIndex]
    people.introduceMyself()
}

