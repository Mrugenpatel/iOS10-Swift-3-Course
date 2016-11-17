//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


//Logical NOT operator - unary prefix operator

let allowedEntry = false

// allowedEntry = true => cannot do this because LET makes allowedEntry and constaint

//if allowedEntry != true {
//    print("access denied!!")
//}

if !allowedEntry {
    print("access denied")
}

let enteredDoorCode = true
let passedRetinaScan = false
let tomCruiseFromMission = false

if enteredDoorCode && passedRetinaScan || tomCruiseFromMission {
    print("Welcome")
} else {
    print("you are not coming in")
}

let hasDoorKey = false
let knowsOverride = true

if hasDoorKey || knowsOverride {
    print("in you come boi!")
} else {
    print("still no entry for you!")
}
