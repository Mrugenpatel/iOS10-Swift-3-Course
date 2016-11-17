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
        if isRunning {
            return "Sports car currently running"
        } else {
            return "Sports car currently turned off"
        }
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
        if isRunning {
            return "Semi is running"
        } else {
            return "Semi is shut down"
        }
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

//var car1 = SportsCar()
//var truck1 = SemiTruck()

//car1.start()
//truck1.start()
//truck1.blowAirHorn()
//
//car1.turnOff()
//truck1.turnOff()
//
//
//var vehicleArray: Array<Vehicle> = [car1, truck1]
//for vehicle in vehicleArray {
//    print("\(vehicle.description)")
//}
