//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, polymorphism"

class Shape {
    var area: Double?
    
    func calculateArea(valA: Double, valB: Double) {
        
    }
}

class Triangle: Shape {                 //Inherts from SHAPE
    
    override func calculateArea(valA: Double, valB: Double) {
        area = (valA * valB) / 2
    }
}

class Rectangle: Shape {
    
    override func calculateArea(valA: Double, valB: Double) {
        area = valA * valB
    }
}


var tri = Triangle()
tri.calculateArea(valA: 3, valB: 4)
tri.area

var rec = Rectangle()
rec.calculateArea(valA: 3, valB: 4)
rec.area

