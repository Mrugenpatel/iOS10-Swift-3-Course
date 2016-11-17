//: Playground - noun: a place where people can play

import UIKit

//Numbers - interger, float and doubles

//Type inference
var age = 30 //Int

//Explicitly declared type
var weight: Int = 70 //Int


//Double is for a very long number
var someNum: Double = 1234567891011121314151617181920212223242526

var milesRan = 56.45 //Double

var pi: Float = 3.14 //Float

//pi = milesRan //cannot

//Double  = 64 bit numbers => 15 digits
//Float = 32 bit numbers => 6 digits


//Arithmatic Operators
// + - / *

var area = 15 * 20
var sum = 5 + 6
var dif = 10 - 3
var div = 13 / 5
var div1 = 12 / 5 //gives answer of "2" BUT no remainder


var mod = 13 % 5 //this will give you the remainder
var mod1 = 21 % 2 //as above

var result = "The result of 13 / 5 is \(div) with a remainder \(mod)"


var randomNum = 13

if randomNum % 2 == 0 {
    print("this is an even number")
} else {
    print("this is an odd number")
}

var result2 = 15 * ((5 + 7) / 3) //BODMAS applies 
