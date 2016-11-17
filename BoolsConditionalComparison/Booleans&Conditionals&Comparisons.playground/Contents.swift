//: Playground - noun: a place where people can play

import UIKit


                                            //BOOLS
var amITheBestTeacherEver: Bool = true

amITheBestTeacherEver = false

if true == false || true == true {
    print("WTF!!")
}

var hasDataFinishedDownloading: Bool = false
//...
//...

hasDataFinishedDownloading = true
//Load UI and other features 

if 1 == 2 {
    print("I should not see this")
}

1 == 1

2 == 3

//Equal to: ==
//Not equal to: !=
//Greater than: >
//Greater than or equal: >=
//Less than: <
//less than or equal: <=

var bankBalance = 400
var item = 400

if bankBalance >= item {
    print("Purchased item")
}

if item >= bankBalance {
    print("you need some more $$$")
}

var word1 = "Spell"
var word2 = "Speeling"

if word1 != word2 {
    print("need to fix spelling you mong!")
} else {
    print("well done on your spelling")
}


if word1.characters.count > 4 {
    print("that is a long set of characters")
} else if word2.characters.count > 10 {
    print("the 2nd word is long")
} else {
    print("you are all good")
}



