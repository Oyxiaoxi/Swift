//: Playground - noun: a place where people can play

import Cocoa

var str = "Hello, Oyxiaoxi"

var shoppingList = ["AirPods","Iphone X","Watch","AppleTV"]
shoppingList[1] = "bottle of water"

var occupations = [
    "Malcolm": "Captain",
    "Kaylee": "Mechanic",
]

occupations["Jayne"] = "Public Relations"

let emptyArray = [String]()
let emptyDictionary = [String: Float]()

shoppingList = []
occupations = [:]

let individualScores = [75, 43, 103, 87, 12]
var teamScore = 0
for score in individualScores{
    if score > 50{
        teamScore += 3
    } else {
        teamScore += 1
    }
}

teamScore
