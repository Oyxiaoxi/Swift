//: Playground - noun: a place where people can play

import Cocoa

protocol knowledgeofFeedAnimal {
    func canIGoOutSide() -> Bool
}

class Human: Animal, knowledgeofFeedAnimal{
    func canIGoOutSide() -> Bool {
        return false
    }
}

class Animal {
    var face: String
    var nickname: String
    var food: String
    
    var master = knowledgeofFeedAnimal?
    
    
    init (face: String, nickname: String, food: String){
        self.face = face
        self.nickname = nickname
        self.food = food
    }
    
    func touchedHead(){
        print("I want to eat \(food)")
    }
    
    func wantToGoOutSide() {
        if let master = master {
            if master.wantToGoOutSide(){
                print("Just GO")
            } else {
                print("Stay Home")
            }
        } else {
            print("Just Go")
        }
    }
}

class Cat: Animal{
    init(){
        super.init(face: "🐱", nickname: "Lili", food: "🐟")
    }
}

var myCat = Cat()
myCat.master = Human(face: "😄",nickname: "Nice", food: "🍟")
myCat.touchedHead()
