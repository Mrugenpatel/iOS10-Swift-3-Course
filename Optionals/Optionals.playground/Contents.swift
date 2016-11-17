//: Playground - noun: a place where people can play

import UIKit

var lotteryWinnings: Int? //The ? means this may OR maynot have a value

//print(lotteryWinnings!) //This will break IF there is NO value in lotteryWinnings the ! 'unwraps' the
lotteryWinnings = 10

if lotteryWinnings != nil {
    print(lotteryWinnings!)
}

//If NOT nil the below will give the value in lotteryWinnings to new var 'winnings'
if let winnings = lotteryWinnings {
    print(winnings)
}

class Car {
    var model: String?
}

var vehicle: Car?

//if let v = vehicle {
//    if let m = v.model {
//        print(m)
//    }
//}

print(vehicle?.model)
//BREAKS THE BUILD ! forces/unwraps the instruction "print(vehicle!.model)"

vehicle = Car()
vehicle?.model = "Bronco"

if let v = vehicle, let m = v.model {
    print(m)
}

var cars: [Car]?

cars = [Car]()

//if let carArr = cars {
//    if carArr.count > 0 {
//        
//    }
//}


//Only execute if not nil AND if more than 0 elements
if let carArr = cars , carArr.count > 0 {
    
} else {
    cars?.append(Car())
    print(cars?.count)
}


class Person {
    // private var _age: Int!   Private is hidden  //! = HAS to have a value and it has to be an INT
    var _age: Int!
    
    //var age =  0                    //Giving default value saves potensial crash if no value
    
    var age: Int {
        if _age == nil {
            _age = 15
        }
        return _age
    }
    
    func setAge(newAge: Int) {
        self._age = newAge
    }
}

var jack = Person()
// can do this jack.setAge(20)
print(jack.age)


class Dog{                  //intialised in the constructor so saves time later
    var species: String
    
    init(someSpecies: String) {
        self.species = someSpecies
    }
}

var lab = Dog(someSpecies: "Black Lab")
print(lab.species)



















