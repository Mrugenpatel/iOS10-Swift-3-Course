//: Playground - noun: a place where people can play

import UIKit

var namesOfIntegers = [Int: String]() //creates a dictionary with two value types

namesOfIntegers[3] = "three" //'[3]' doesNOT refer to index it is the KEY
namesOfIntegers[44] = "forty four"

//Remove ALL values from dictionary
namesOfIntegers = [:]

//This seeds the dictionary with two key/value pairs
// INFERENCE also works "var airports = ["YYZ": "Toronto Pearson", "LAX": "Los Angeles"]"
var airports: [String: String] = ["YYZ": "Toronto Pearson", "LAX": "Los Angeles"]

print("The airport dictionary has: \(airports.count)")

if airports.isEmpty {
    print("there is nowhere to land!!")
}

airports["LHR"] = "London"
//updates LHR like this...
airports["LHR"] = "London Heathrow"

airports["DEV"] = "Devslopes Int"
//REMOVE ITEM
airports["DEV"] = nil


                        //LOOPS FOR DICTIONARY
for (key, value) in airports {
    print("\(key):  \(value)")
}

for key in airports.keys {
    print("Key: \(key)")
}

for value in airports.values {
    print("Value: \(value)")
}

var abilities: [String: Array]
