//: Playground - noun: a place where people can play

import UIKit

                    //PROTOCOLS


//Require you to declare if they are read AND write. The info inside tells us what you MUST have to use VEHICLE

//CustomString - means you can make sure everything you return is a string

protocol Vehicle: CustomStringConvertible {
    var isRunning: Bool { get set }
   
//mutating must go in front of func to say that it will alter the state of something
    mutating func start()
    mutating func turnOff()
}

struct SportsCar: Vehicle {
    var isRunning: Bool = false
    var description: String {
        if isRunning {
            return "Sports car currently running"
        } else {
            return "Sports car currently turned off"
        }
    }
    
    
    mutating func start() {
        if isRunning {
            print("already started")
        } else {
            isRunning = true
            print("Vrooom!")
        }
        
    }
    mutating func turnOff() {
        if isRunning {
            isRunning = false
            print("Crickets")
        } else {
            print("Already Dead!")
        }
    }
}

class SemiTruck: Vehicle {
    var isRunning: Bool = false
    var description: String {
        if isRunning {
            return "Semi is running"
        } else {
            return "Semi is shut down"
        }
    }
    
    func start() {
        if isRunning {
            print("and we are live!")
        } else {
            isRunning = true
            print("Lets go!")
        }
    }
    
    func turnOff() {
        if isRunning {
         isRunning = false
            print("put...put...silence")
        } else {
            print("Already shut down")
        }
    }
    
//can also ADD more func if we are using a CLASS
    
    func blowAirHorn() {
        print("TOOOOOOOOOT")
    }
}

var car1 = SportsCar()
var truck1 = SemiTruck()

car1.start()
truck1.start()
truck1.blowAirHorn()

//car1.turnOff()
//truck1.turnOff()

//can be placed in an Array as they are both inheriting from the Vehicle protocol BUT the function writen in SEmiTruck will only work for that object
var vehicleArray: Array<Vehicle> = [car1, truck1]
for vehicle in vehicleArray {
   print("\(vehicle.description)")
}





















