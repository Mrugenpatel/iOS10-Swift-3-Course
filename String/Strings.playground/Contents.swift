//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//var str: String = "Hello, playground"

var firstName = "Pom"
var lastName = "Haffs"

var age = 33

var fullName = firstName + " " + lastName

var fullName2 = "\(firstName) \(lastName) is \(age)"

fullName

fullName2

fullName.append(" III") //append = add to

//"something." - gives you a list of all options


//UPPERCASE
var bookTitle = "land of the nerds"

bookTitle = bookTitle.capitalized

//LOWERCASE
var chatTwat = "HA HA I LOVE TO TYPE IN CAPS SHIT BOX"

chatTwat = chatTwat.lowercased()

var lowerCase = chatTwat.lowercased()

//NAUGHTY WORDS - replacing words

var sentance = "What the fetch?, Heck thats dirty"

if sentance.contains("fetch") || sentance.contains("heck") {
    sentance.replacingOccurrences(of: "fetch", with: "Dogdick")
    sentance.replacingOccurrences(of: "Heck", with: "Minge")
    
}
sentance.