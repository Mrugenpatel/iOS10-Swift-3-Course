//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//Shape 1
var length = 5
var width = 10

var area = length * width

//Shape 2
var length2 = 6
var width2 = 12

var area2 = length2 * width2

//Shape 3
var length3 = 8
var width3 = 15

var area3 = length3 * width3

//this is NOT DRY (Don't Repeat Yourself)
//Functions should be reusable 

func calculateArea(length: Int, width: Int) -> Int {
    return length * width
}

let shape1 = calculateArea(length: 5, width: 4)
let shape2 = calculateArea(length: 7, width: 9)
let shape3 = calculateArea(length: 2, width: 2)

//var bank = 400.32
//var shoe = 200.32

//func purchaseItem(currentBank: Double, item: Double) -> Double {
//    if item <= currentBank {
//        return currentBank - item
//    } else {
//        print ("You are a poor bastard")
//        return currentBank
//    }
//}
//
//purchaseItem(currentBank: bank, item: 204.53)

//Some extra things to play with 'inout' mean that output is the same type as input ie 'Double'. Also allows for currentBank to be manipulated inside the function

var bank = 4003.21

func purchaseItem(currentBank: inout Double, item: Double) {
    if item <= currentBank {
        currentBank = currentBank - item
        print("Purchased item for: $\(item)")
    } else {
        print ("You are a poor bastard.")
    }
}

purchaseItem(currentBank: &bank, item: 204.53)

