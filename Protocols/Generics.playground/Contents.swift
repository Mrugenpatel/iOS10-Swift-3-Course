//: Playground - noun: a place where people can play

import UIKit

                        //GENERICS
//The point of a generic is that it can tell what the input is, Int, String Double etc.. and respond correctly


//Only adds Ints
func intAdder(number: Int) -> Int {
    return number + 1
}

intAdder(number: 15)


//This will add Ints AND Doubles
func doubleAdder(number: Double) -> Double {
    return number + 1.0
}

doubleAdder(number: 15)
doubleAdder(number: 15.0)


//Strideable - Conforming types are notionally continuous, one-dimensional values that can be offset and measured. So it returns the same as what went in.
func genericAdder<T: Strideable>(number: T) -> T {
    return number + 1
}

genericAdder(number: 1)
genericAdder(number: 1.234)

//Only works for Int
func intMultiplier(lhs: Int, rhs: Int) -> Int {
    return rhs * lhs
}

intMultiplier(lhs: 2, rhs: 4)

//Only works for Doubles

func doubleMultiplier(lhs: Double, rhs: Double) -> Double {
    return rhs * lhs
}

doubleMultiplier(lhs: 2.2, rhs: 4.4)


//By creating a protocol and then adding in the three situations as extensions much time and code is saved later on.
protocol Numeric {
    static func *(lhs: Self, rhs: Self) -> Self
}

extension Double: Numeric {}
extension Int: Numeric {}
extension Float: Numeric {}

func genericMultiplier<T: Numeric>(lhs: T, rhs: T) -> T {
    return lhs * rhs
}

genericMultiplier(lhs: 2, rhs: 5)
genericMultiplier(lhs: 2.14, rhs: 3)
genericMultiplier(lhs: 0.234, rhs: 12.3)


















