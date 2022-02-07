//
//  ViewController.swift
//  Test2
//
//  Created by Train2 on 4/1/2565 BE.
//

import UIKit

struct Person {
    var name: String = ""
    var surname: String = ""
    var age: Int = 0
}

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        var student = Person() // Create instance
        student.name = "Somsak"
        student.surname = "Sukjai"
        student.age = 15
        
        //access properties and assign new values
        print(student.name)
        print(student.surname)
        print(student.age)
        print("My name is \(student.name) \(student.surname). My age is \(student.age).")
    }
}
