//: Playground - noun: a place where people can play



                    //RECURSIVE FUNCTIONS

import UIKit

//Normal for LOOP 0, 1, 2, 3
func printNumbers(max: Int){
    for x in 0...max {
        print(x)
    }
}

printNumbers(max: 3)

//a recursive function calls its from within itself 0, 1, 2, 3, 4
func printNumberRec(max: Int){
    if max > 0 {
        printNumberRec(max: max - 1)
    }
    print(max)
}

printNumberRec(max: 4)

//More complex problem - finding factorials (sum of nums up to...)
//2! = 1 x 2 = 2
//3! = 1 x 2 x 3 = 6

func factorialFirst(num: Int) -> Int {
    var factoral = 0
    for x in 1...num {
        if factoral != 0 {
            factoral = factoral * x
        } else {
            factoral = 1
        }
    }
    
    return factoral
}

factorialFirst(num: 5)
factorialFirst(num: 10)


//Same as above but using a recursive function
func factorial(num: Int) -> Int {
    if num == 1 {
        return 1
    } else {
        return num * factorial(num: num - 1)
    }
}

factorial(num: 5)
factorial(num: 10)


























