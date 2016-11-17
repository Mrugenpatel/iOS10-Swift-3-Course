//: Playground - noun: a place where people can play

import UIKit



class Vehicle {             //Class is an Object that can have properties and functions
    var tires = 4
    var lights = 2
    var horsePower = 468
    var model = ""
    
    func drive() {
        //accelerate the vehicle
    }
    func brake() {
        ///slows car down
    }
}

                        //Create an instance or Instantiated

let bmw = Vehicle()
bmw.model = "328i"

let ford = Vehicle()
ford.model = "F150"
ford.brake() //telling it to run that function

func passByRef(vehicle: Vehicle) {
    vehicle.model = "Cheese"
}

print(ford.model)
passByRef(vehicle: ford) //this CAN change a constant 'let' PASS BY REFERENCE
print(ford.model)

var someonesAge = 20

func passByValue(age: Int) { //Value types PASS BY VALUE and CANNOT be changed
    age = 10
}





