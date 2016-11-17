//: Playground - noun: a place where people can play

import UIKit

                    //PROTOCOL EXTENSIONS
//(see previous for mark up on protocols)


protocol Vehicle: CustomStringConvertible {
    var isRunning: Bool { get set }
//added make/model to the Vehicle protocol
    var make: String { get set }
    var model: String { get set }

    mutating func start()
    mutating func turnOff()
}

//create the EXTENSION here
extension Vehicle {
    
    var makeModel: String {
        return "\(make) \(model)"
    }
    
    mutating func start() {
        if isRunning {
            print("already started")
        } else {
            isRunning = true
            print("\(self.description) fire up")
        }
    }
    mutating func turnOff() {
        if isRunning {
            isRunning = false
            print("\(self.description) shut down!")
        } else {
            print("already dead!")
        }
    }
}



//can just add make/model in because this is a STRUC
struct SportsCar: Vehicle {
    var isRunning: Bool = false
    var make: String
    var model: String
    
    var description: String {
        return self.makeModel
    }
    
    //DELETED this because we are now doing this functionality in the EXTENSION
//    mutating func start() {
//        if isRunning {
//            print("already started")
//        } else {
//            isRunning = true
//            print("Vrooom!")
//        }
//        
//    }
//    mutating func turnOff() {
//        if isRunning {
//            isRunning = false
//            print("Crickets")
//        } else {
//            print("Already Dead!")
//        }
//    }
}



class SemiTruck: Vehicle {
    var isRunning: Bool = false

//a class requires a set start value for make/model as we declared with isRunning above, thus an INIT is needed
    var make: String
    var model: String
    
    init(isRunning: Bool, make: String, model: String) {
        self.isRunning = isRunning
        self.make = make
        self.model = model
    }
    
    var description: String {
        return self.makeModel
    }
    
    //DELETED because we are now doing this in the EXTENSION
//    func start() {
//        if isRunning {
//            print("and we are live!")
//        } else {
//            isRunning = true
//            print("Lets go!")
//        }
//    }
//    
//    func turnOff() {
//        if isRunning {
//            isRunning = false
//            print("put...put...silence")
//        } else {
//            print("Already shut down")
//        }
//    }
//    
    
    func blowAirHorn() {
        print("TOOOOOOOOOT")
    }
}

var car1 = SportsCar(isRunning: false, make: "Jaguar", model: "XJS")
var truck1 = SemiTruck(isRunning: false, make: "Peterbuilt", model: "TTF")

car1.start()
truck1.start()
truck1.blowAirHorn()
//
car1.turnOff()
truck1.turnOff()
//
//
var vehicleArray: Array<Vehicle> = [car1, truck1]
for vehicle in vehicleArray {
    print("\(vehicle.makeModel)")
}


//THIS IS WHAT WE CAN USE TO ENSURE NUMBERS RETURN AS WANTED!!
extension Double {
    var dollarString: String {
        return String(format: "$%.02f", self)
    }
}

var pct = 32.15 * 0.15
pct.dollarString








